
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146 {int dummy; } ;


 scalar_t__ I2CRead (struct saa7146*,int,int ,int ) ;
 int attach_inform (struct saa7146*,int) ;

__attribute__((used)) static void I2CBusScan(struct saa7146 *saa)
{
 int i;
 for (i = 0; i < 0xff; i += 2)
  if ((I2CRead(saa, i, 0, 0)) >= 0)
   attach_inform(saa, i);
}
