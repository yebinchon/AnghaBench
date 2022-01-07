
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int len; unsigned char* buf; int flags; int addr; } ;
struct i2c_adapter {int name; } ;


 int DDC_ADDR ;
 int DDC_SEGMENT_ADDR ;
 int DRM_DEBUG_KMS (char*,int ) ;
 int EDID_LENGTH ;
 int ENXIO ;
 int I2C_M_RD ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,unsigned char) ;

__attribute__((used)) static int
drm_do_probe_ddc_edid(struct i2c_adapter *adapter, unsigned char *buf,
        int block, int len)
{
 unsigned char start = block * EDID_LENGTH;
 unsigned char segment = block >> 1;
 unsigned char xfers = segment ? 3 : 2;
 int ret, retries = 5;







 do {
  struct i2c_msg msgs[] = {
   {
    .addr = DDC_SEGMENT_ADDR,
    .flags = 0,
    .len = 1,
    .buf = &segment,
   }, {
    .addr = DDC_ADDR,
    .flags = 0,
    .len = 1,
    .buf = &start,
   }, {
    .addr = DDC_ADDR,
    .flags = I2C_M_RD,
    .len = len,
    .buf = buf,
   }
  };





  ret = i2c_transfer(adapter, &msgs[3 - xfers], xfers);

  if (ret == -ENXIO) {
   DRM_DEBUG_KMS("drm: skipping non-existent adapter %s\n",
     adapter->name);
   break;
  }
 } while (ret != xfers && --retries);

 return ret == xfers ? 0 : -1;
}
