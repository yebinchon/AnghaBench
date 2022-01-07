
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dibx000_i2c_master {scalar_t__ device_rev; int base_reg; } ;


 scalar_t__ DIB7000 ;

__attribute__((used)) static int dibx000_i2c_gate_ctrl(struct dibx000_i2c_master *mst, u8 tx[4],
     u8 addr, int onoff)
{
 u16 val;


 if (onoff)
  val = addr << 8;
 else
  val = 1 << 7;

 if (mst->device_rev > DIB7000)
  val <<= 1;

 tx[0] = (((mst->base_reg + 1) >> 8) & 0xff);
 tx[1] = ((mst->base_reg + 1) & 0xff);
 tx[2] = val >> 8;
 tx[3] = val & 0xff;

 return 0;
}
