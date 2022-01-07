
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;


 scalar_t__ drm_do_probe_ddc_edid (struct i2c_adapter*,unsigned char*,int ,int) ;

bool
drm_probe_ddc(struct i2c_adapter *adapter)
{
 unsigned char out;

 return (drm_do_probe_ddc_edid(adapter, &out, 0, 1) == 0);
}
