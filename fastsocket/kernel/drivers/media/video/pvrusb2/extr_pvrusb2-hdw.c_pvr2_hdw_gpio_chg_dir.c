
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pvr2_hdw {int dummy; } ;


 int PVR2_GPIO_DIR ;
 int PVR2_TRACE_GPIO ;
 int pvr2_read_register (struct pvr2_hdw*,int ,int*) ;
 int pvr2_trace (int ,char*,int,...) ;
 int pvr2_write_register (struct pvr2_hdw*,int ,int) ;

int pvr2_hdw_gpio_chg_dir(struct pvr2_hdw *hdw,u32 msk,u32 val)
{
 u32 cval,nval;
 int ret;
 if (~msk) {
  ret = pvr2_read_register(hdw,PVR2_GPIO_DIR,&cval);
  if (ret) return ret;
  nval = (cval & ~msk) | (val & msk);
  pvr2_trace(PVR2_TRACE_GPIO,
      "GPIO direction changing 0x%x:0x%x"
      " from 0x%x to 0x%x",
      msk,val,cval,nval);
 } else {
  nval = val;
  pvr2_trace(PVR2_TRACE_GPIO,
      "GPIO direction changing to 0x%x",nval);
 }
 return pvr2_write_register(hdw,PVR2_GPIO_DIR,nval);
}
