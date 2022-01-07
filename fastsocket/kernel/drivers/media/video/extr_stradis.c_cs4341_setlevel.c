
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146 {int dummy; } ;


 int I2CWrite (struct saa7146*,int,int,int,int) ;

__attribute__((used)) static void cs4341_setlevel(struct saa7146 *saa, int left, int right)
{
 I2CWrite(saa, 0x22, 0x03, left > 94 ? 94 : left, 2);
 I2CWrite(saa, 0x22, 0x04, right > 94 ? 94 : right, 2);
}
