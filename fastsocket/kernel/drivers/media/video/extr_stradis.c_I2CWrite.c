
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u32 ;
struct saa7146 {int dummy; } ;


 int I2CWipe (struct saa7146*) ;
 int SAA7146_I2C_BUSY ;
 int SAA7146_I2C_STATUS ;
 int SAA7146_I2C_TRANSFER ;
 int SAA7146_MC2 ;
 int SAA7146_MC2_UPLD_I2C ;
 int saaread (int ) ;
 int saawrite (int,int ) ;
 int schedule () ;

__attribute__((used)) static int I2CWrite(struct saa7146 *saa, unsigned char addr, unsigned char b1,
      unsigned char b2, int both)
{
 int i;
 u32 data;

 if (saaread(SAA7146_I2C_STATUS) & 0x3c)
  I2CWipe(saa);
 for (i = 0; i < 1000 &&
      (saaread(SAA7146_I2C_STATUS) & SAA7146_I2C_BUSY); i++)
  schedule();
 if (i == 1000)
  I2CWipe(saa);
 data = ((addr & 0xfe) << 24) | ((b1 & 0xff) << 16);
 if (both)
  data |= ((b2 & 0xff) << 8) | 0xe5;
 else
  data |= 0xd1;
 saawrite(data, SAA7146_I2C_TRANSFER);
 saawrite((SAA7146_MC2_UPLD_I2C << 16) | SAA7146_MC2_UPLD_I2C,
   SAA7146_MC2);
 return 0;
}
