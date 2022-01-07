
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int dummy; } ;
struct rdac_queue_data {int entry; TYPE_1__* h; void* callback_data; int callback_fn; } ;
struct rdac_controller {int ms_queued; int ms_lock; int ms_work; struct scsi_device* ms_sdev; int ms_head; } ;
typedef int activate_complete ;
struct TYPE_2__ {struct rdac_controller* ctlr; } ;


 int GFP_NOIO ;
 int SCSI_DH_OK ;
 int SCSI_DH_RETRY ;
 TYPE_1__* get_rdac_data (struct scsi_device*) ;
 int kmpath_rdacd ;
 struct rdac_queue_data* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int queue_work (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int queue_mode_select(struct scsi_device *sdev,
    activate_complete fn, void *data)
{
 struct rdac_queue_data *qdata;
 struct rdac_controller *ctlr;

 qdata = kzalloc(sizeof(*qdata), GFP_NOIO);
 if (!qdata)
  return SCSI_DH_RETRY;

 qdata->h = get_rdac_data(sdev);
 qdata->callback_fn = fn;
 qdata->callback_data = data;

 ctlr = qdata->h->ctlr;
 spin_lock(&ctlr->ms_lock);
 list_add_tail(&qdata->entry, &ctlr->ms_head);
 if (!ctlr->ms_queued) {
  ctlr->ms_queued = 1;
  ctlr->ms_sdev = sdev;
  queue_work(kmpath_rdacd, &ctlr->ms_work);
 }
 spin_unlock(&ctlr->ms_lock);
 return SCSI_DH_OK;
}
