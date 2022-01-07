
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct thermostat {int clt; } ;


 int ENODEV ;
 int i2c_master_send (int ,char const*,int) ;

__attribute__((used)) static int
write_reg(struct thermostat* th, int reg, u8 data)
{
 u8 tmp[2];
 int rc;

 tmp[0] = reg;
 tmp[1] = data;
 rc = i2c_master_send(th->clt, (const char *)tmp, 2);
 if (rc < 0)
  return rc;
 if (rc != 2)
  return -ENODEV;
 return 0;
}
