
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct saa7146 {int nr; } ;


 int I2CWrite (struct saa7146*,int,int ,int ,int) ;
 int INIT8420LEN ;
 int MODE8420LEN ;
 int * init8420 ;
 int * mode8420con ;
 int * mode8420pro ;
 int printk (char*,int ) ;

__attribute__((used)) static void initialize_cs8420(struct saa7146 *saa, int pro)
{
 int i;
 u8 *sequence;
 if (pro)
  sequence = mode8420pro;
 else
  sequence = mode8420con;
 for (i = 0; i < INIT8420LEN; i++)
  I2CWrite(saa, 0x20, init8420[i * 2], init8420[i * 2 + 1], 2);
 for (i = 0; i < MODE8420LEN; i++)
  I2CWrite(saa, 0x20, sequence[i * 2], sequence[i * 2 + 1], 2);
 printk("stradis%d: CS8420 initialized\n", saa->nr);
}
