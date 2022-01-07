
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct alua_dh_data {int tpgs; int state; int flags; int * callback_data; int (* callback_fn ) (void*,int) ;int pref; } ;
typedef int (* activate_complete ) (void*,int) ;


 int ALUA_OPTIMIZE_STPG ;
 int SCSI_DH_IO ;
 int SCSI_DH_OK ;
 int SCSI_DH_RETRY ;
 int TPGS_MODE_EXPLICIT ;
 int TPGS_MODE_IMPLICIT ;





 int alua_rtpg (struct scsi_device*,struct alua_dh_data*) ;
 struct alua_dh_data* get_alua_data (struct scsi_device*) ;
 int submit_stpg (struct alua_dh_data*) ;

__attribute__((used)) static int alua_activate(struct scsi_device *sdev,
   activate_complete fn, void *data)
{
 struct alua_dh_data *h = get_alua_data(sdev);
 int err = SCSI_DH_OK;
 int stpg = 0;

 err = alua_rtpg(sdev, h);
 if (err != SCSI_DH_OK)
  goto out;

 if (h->tpgs & TPGS_MODE_EXPLICIT) {
  switch (h->state) {
  case 132:
   stpg = 1;
   if ((h->flags & ALUA_OPTIMIZE_STPG) &&
       (!h->pref) &&
       (h->tpgs & TPGS_MODE_IMPLICIT))
    stpg = 0;
   break;
  case 130:
  case 128:
   stpg = 1;
   break;
  case 131:
   err = SCSI_DH_IO;
   break;
  case 129:
   err = SCSI_DH_RETRY;
   break;
  default:
   break;
  }
 }

 if (stpg) {
  h->callback_fn = fn;
  h->callback_data = data;
  err = submit_stpg(h);
  if (err == SCSI_DH_OK)
   return 0;
  h->callback_fn = h->callback_data = ((void*)0);
 }

out:
 if (fn)
  fn(data, err);
 return 0;
}
