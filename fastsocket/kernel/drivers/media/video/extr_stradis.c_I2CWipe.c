
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146 {int dummy; } ;


 int SAA7146_I2C_ABORT ;
 int SAA7146_I2C_STATUS ;
 int SAA7146_MC2 ;
 int SAA7146_MC2_UPLD_I2C ;
 int saaread (int ) ;
 int saawrite (int,int ) ;
 int schedule () ;

__attribute__((used)) static void I2CWipe(struct saa7146 *saa)
{
 int i;

 saawrite(0x600 | SAA7146_I2C_ABORT, SAA7146_I2C_STATUS);
 saawrite((SAA7146_MC2_UPLD_I2C << 16) |
   SAA7146_MC2_UPLD_I2C, SAA7146_MC2);

 for (i = 0; i < 1000 &&
      !(saaread(SAA7146_MC2) & SAA7146_MC2_UPLD_I2C); i++)
  schedule();
 saawrite(0x600, SAA7146_I2C_STATUS);
 saawrite((SAA7146_MC2_UPLD_I2C << 16) |
   SAA7146_MC2_UPLD_I2C, SAA7146_MC2);

 for (i = 0; i < 1000 &&
      !(saaread(SAA7146_MC2) & SAA7146_MC2_UPLD_I2C); i++)
  schedule();
 saawrite(0x600, SAA7146_I2C_STATUS);
 saawrite((SAA7146_MC2_UPLD_I2C << 16) |
   SAA7146_MC2_UPLD_I2C, SAA7146_MC2);

 for (i = 0; i < 1000 &&
      !(saaread(SAA7146_MC2) & SAA7146_MC2_UPLD_I2C); i++)
  schedule();
}
