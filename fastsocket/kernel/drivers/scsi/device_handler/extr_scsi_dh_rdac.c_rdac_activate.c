
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct rdac_dh_data {int mode; int preferred; int lun_state; } ;
typedef int (* activate_complete ) (void*,int) ;


 int RDAC_LUN_UNOWNED ;


 int RDAC_PREFERRED ;
 int SCSI_DH_OK ;
 int check_ownership (struct scsi_device*,struct rdac_dh_data*) ;
 struct rdac_dh_data* get_rdac_data (struct scsi_device*) ;
 int queue_mode_select (struct scsi_device*,int (*) (void*,int),void*) ;

__attribute__((used)) static int rdac_activate(struct scsi_device *sdev,
   activate_complete fn, void *data)
{
 struct rdac_dh_data *h = get_rdac_data(sdev);
 int err = SCSI_DH_OK;
 int act = 0;

 err = check_ownership(sdev, h);
 if (err != SCSI_DH_OK)
  goto done;

 switch (h->mode) {
 case 129:
  if (h->lun_state == RDAC_LUN_UNOWNED)
   act = 1;
  break;
 case 128:
  if ((h->lun_state == RDAC_LUN_UNOWNED) &&
      (h->preferred == RDAC_PREFERRED))
   act = 1;
  break;
 default:
  break;
 }

 if (act) {
  err = queue_mode_select(sdev, fn, data);
  if (err == SCSI_DH_OK)
   return 0;
 }
done:
 if (fn)
  fn(data, err);
 return 0;
}
