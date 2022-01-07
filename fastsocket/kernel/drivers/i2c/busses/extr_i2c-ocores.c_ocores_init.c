
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ocores_i2c {int clock_khz; } ;


 int OCI2C_CMD ;
 int OCI2C_CMD_IACK ;
 int OCI2C_CONTROL ;
 int OCI2C_CTRL_EN ;
 int OCI2C_CTRL_IEN ;
 int OCI2C_PREHIGH ;
 int OCI2C_PRELOW ;
 int oc_getreg (struct ocores_i2c*,int ) ;
 int oc_setreg (struct ocores_i2c*,int ,int) ;

__attribute__((used)) static void ocores_init(struct ocores_i2c *i2c)
{
 int prescale;
 u8 ctrl = oc_getreg(i2c, OCI2C_CONTROL);


 oc_setreg(i2c, OCI2C_CONTROL, ctrl & ~(OCI2C_CTRL_EN|OCI2C_CTRL_IEN));

 prescale = (i2c->clock_khz / (5*100)) - 1;
 oc_setreg(i2c, OCI2C_PRELOW, prescale & 0xff);
 oc_setreg(i2c, OCI2C_PREHIGH, prescale >> 8);


 oc_setreg(i2c, OCI2C_CMD, OCI2C_CMD_IACK);
 oc_setreg(i2c, OCI2C_CONTROL, ctrl | OCI2C_CTRL_IEN | OCI2C_CTRL_EN);
}
