
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int status_type; int payload_size; int payload; int queue_designator; int status_subtype; int failed; } ;
struct TYPE_6__ {TYPE_2__ status; } ;
struct zfcp_dbf_hba_record {TYPE_3__ u; int tag2; int tag; } ;
struct zfcp_dbf {int hba_lock; int hba; TYPE_1__* adapter; struct zfcp_dbf_hba_record hba_buf; } ;
struct fsf_status_read_buffer {int status_type; int payload; int status_subtype; int queue_designator; } ;
struct fsf_queue_designator {int dummy; } ;
struct fsf_link_down_info {int dummy; } ;
struct TYPE_4__ {int stat_miss; } ;
 int ZFCP_DBF_TAG_SIZE ;
 int ZFCP_DBF_UNSOL_PAYLOAD_BIT_ERROR_THRESHOLD ;
 int ZFCP_DBF_UNSOL_PAYLOAD_FEATURE_UPDATE_ALERT ;
 int ZFCP_DBF_UNSOL_PAYLOAD_SENSE_DATA_AVAIL ;
 int atomic_read (int *) ;
 int debug_event (int ,int,struct zfcp_dbf_hba_record*,int) ;
 int memcpy (int *,int *,int) ;
 int memset (struct zfcp_dbf_hba_record*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strncpy (int ,char const*,int ) ;

void _zfcp_dbf_hba_fsf_unsol(const char *tag, int level, struct zfcp_dbf *dbf,
        struct fsf_status_read_buffer *status_buffer)
{
 struct zfcp_dbf_hba_record *rec = &dbf->hba_buf;
 unsigned long flags;

 spin_lock_irqsave(&dbf->hba_lock, flags);
 memset(rec, 0, sizeof(*rec));
 strncpy(rec->tag, "stat", ZFCP_DBF_TAG_SIZE);
 strncpy(rec->tag2, tag, ZFCP_DBF_TAG_SIZE);

 rec->u.status.failed = atomic_read(&dbf->adapter->stat_miss);
 if (status_buffer != ((void*)0)) {
  rec->u.status.status_type = status_buffer->status_type;
  rec->u.status.status_subtype = status_buffer->status_subtype;
  memcpy(&rec->u.status.queue_designator,
         &status_buffer->queue_designator,
         sizeof(struct fsf_queue_designator));

  switch (status_buffer->status_type) {
  case 130:
   rec->u.status.payload_size =
       ZFCP_DBF_UNSOL_PAYLOAD_SENSE_DATA_AVAIL;
   break;

  case 133:
   rec->u.status.payload_size =
       ZFCP_DBF_UNSOL_PAYLOAD_BIT_ERROR_THRESHOLD;
   break;

  case 131:
   switch (status_buffer->status_subtype) {
   case 128:
   case 129:
    rec->u.status.payload_size =
     sizeof(struct fsf_link_down_info);
   }
   break;

  case 132:
   rec->u.status.payload_size =
       ZFCP_DBF_UNSOL_PAYLOAD_FEATURE_UPDATE_ALERT;
   break;
  }
  memcpy(&rec->u.status.payload,
         &status_buffer->payload, rec->u.status.payload_size);
 }

 debug_event(dbf->hba, level, rec, sizeof(*rec));
 spin_unlock_irqrestore(&dbf->hba_lock, flags);
}
