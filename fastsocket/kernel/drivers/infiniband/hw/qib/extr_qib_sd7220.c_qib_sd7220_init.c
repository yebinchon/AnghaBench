
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qib_devdata {TYPE_2__* cspec; int pport; TYPE_1__* pcidev; } ;
struct firmware {int dummy; } ;
struct TYPE_4__ {int serdes_first_init_done; } ;
struct TYPE_3__ {int dev; } ;


 int SD7220_FW_NAME ;
 int START_EQ1 (int ) ;
 int ibsd_mod_allchnls (struct qib_devdata*,int ,int ,int) ;
 int kr_ibserdesctrl ;
 int qib_dev_err (struct qib_devdata*,char*) ;
 int qib_ibsd_reset (struct qib_devdata*,int) ;
 int qib_ibsd_ucode_loaded (int ,struct firmware const*) ;
 int qib_internal_presets (struct qib_devdata*) ;
 int qib_read_kreg64 (struct qib_devdata*,int ) ;
 int qib_sd7220_ib_load (struct qib_devdata*,struct firmware const*) ;
 int qib_sd7220_ib_vfy (struct qib_devdata*,struct firmware const*) ;
 int qib_sd_dactrim (struct qib_devdata*) ;
 int qib_sd_early (struct qib_devdata*) ;
 scalar_t__ qib_sd_setvals (struct qib_devdata*) ;
 int qib_sd_trimdone_monitor (struct qib_devdata*,char*) ;
 int qib_sd_trimdone_poll (struct qib_devdata*) ;
 int qib_sd_trimself (struct qib_devdata*,int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,int *) ;
 int set_7220_relock_poll (struct qib_devdata*,int) ;

int qib_sd7220_init(struct qib_devdata *dd)
{
 const struct firmware *fw;
 int ret = 1;
 int first_reset, was_reset;


 was_reset = (qib_read_kreg64(dd, kr_ibserdesctrl) & 1);
 if (!was_reset) {

  qib_ibsd_reset(dd, 1);
  qib_sd_trimdone_monitor(dd, "Driver-reload");
 }

 ret = request_firmware(&fw, SD7220_FW_NAME, &dd->pcidev->dev);
 if (ret) {
  qib_dev_err(dd, "Failed to load IB SERDES image\n");
  goto done;
 }


 ret = qib_ibsd_ucode_loaded(dd->pport, fw);
 if (ret < 0)
  goto bail;

 first_reset = !ret;




 ret = qib_sd_early(dd);
 if (ret < 0) {
  qib_dev_err(dd, "Failed to set IB SERDES early defaults\n");
  goto bail;
 }





 if (first_reset) {
  ret = qib_sd_dactrim(dd);
  if (ret < 0) {
   qib_dev_err(dd, "Failed IB SERDES DAC trim\n");
   goto bail;
  }
 }






 ret = qib_internal_presets(dd);
 if (ret < 0) {
  qib_dev_err(dd, "Failed to set IB SERDES presets\n");
  goto bail;
 }
 ret = qib_sd_trimself(dd, 0x80);
 if (ret < 0) {
  qib_dev_err(dd, "Failed to set IB SERDES TRIMSELF\n");
  goto bail;
 }


 ret = 0;
 if (first_reset) {
  int vfy;
  int trim_done;

  ret = qib_sd7220_ib_load(dd, fw);
  if (ret < 0) {
   qib_dev_err(dd, "Failed to load IB SERDES image\n");
   goto bail;
  } else {

   vfy = qib_sd7220_ib_vfy(dd, fw);
   if (vfy != ret) {
    qib_dev_err(dd, "SERDES PRAM VFY failed\n");
    goto bail;
   }
  }





  ret = 0;
  ret = ibsd_mod_allchnls(dd, START_EQ1(0), 0, 0x38);
  if (ret < 0) {
   qib_dev_err(dd, "Failed clearing START_EQ1\n");
   goto bail;
  }

  qib_ibsd_reset(dd, 0);




  trim_done = qib_sd_trimdone_poll(dd);





  qib_ibsd_reset(dd, 1);

  if (!trim_done) {
   qib_dev_err(dd, "No TRIMDONE seen\n");
   goto bail;
  }




  qib_sd_trimdone_monitor(dd, "First-reset");

  dd->cspec->serdes_first_init_done = 1;
 }




 ret = 0;
 if (qib_sd_setvals(dd) >= 0)
  goto done;
bail:
 ret = 1;
done:

 set_7220_relock_poll(dd, -1);

 release_firmware(fw);
 return ret;
}
