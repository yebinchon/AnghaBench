
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int dummy; } ;


 int BACTRL (int ) ;
 int EPB_GLOBAL_WR ;
 int LDOUTCTRL1 (int ) ;
 int RXHSSTATUS (int ) ;
 int VCDL_CTRL2 (int ) ;
 int VCDL_DAC2 (int ) ;
 int ibsd_mod_allchnls (struct qib_devdata*,int,int,int) ;
 int udelay (int) ;

__attribute__((used)) static int qib_sd_dactrim(struct qib_devdata *dd)
{
 int ret;

 ret = ibsd_mod_allchnls(dd, VCDL_DAC2(0) | EPB_GLOBAL_WR, 0x2D, 0xFF);
 if (ret < 0)
  goto bail;


 ret = ibsd_mod_allchnls(dd, VCDL_CTRL2(0), 3, 0xF);
 if (ret < 0)
  goto bail;

 ret = ibsd_mod_allchnls(dd, BACTRL(0) | EPB_GLOBAL_WR, 0x40, 0xFF);
 if (ret < 0)
  goto bail;

 ret = ibsd_mod_allchnls(dd, LDOUTCTRL1(0) | EPB_GLOBAL_WR, 0x04, 0xFF);
 if (ret < 0)
  goto bail;

 ret = ibsd_mod_allchnls(dd, RXHSSTATUS(0) | EPB_GLOBAL_WR, 0x04, 0xFF);
 if (ret < 0)
  goto bail;





 udelay(415);

 ret = ibsd_mod_allchnls(dd, LDOUTCTRL1(0) | EPB_GLOBAL_WR, 0x00, 0xFF);

bail:
 return ret;
}
