
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {TYPE_3__* request; } ;
struct fnic {TYPE_2__* lport; } ;
struct blk_queue_tag {int tag_map; int ** tag_index; } ;
struct TYPE_6__ {int tag; } ;
struct TYPE_5__ {TYPE_1__* host; } ;
struct TYPE_4__ {struct blk_queue_tag* bqt; } ;


 int BUG_ON (int) ;
 int SCSI_NO_TAG ;
 int clear_bit (int,int ) ;

__attribute__((used)) static inline void
fnic_scsi_host_end_tag(struct fnic *fnic, struct scsi_cmnd *sc)
{
 struct blk_queue_tag *bqt = fnic->lport->host->bqt;
 int tag = sc->request->tag;

 if (tag == SCSI_NO_TAG)
  return;

 BUG_ON(!bqt || !bqt->tag_index[tag]);
 if (!bqt)
  return;

 bqt->tag_index[tag] = ((void*)0);
 clear_bit(tag, bqt->tag_map);

 return;
}
