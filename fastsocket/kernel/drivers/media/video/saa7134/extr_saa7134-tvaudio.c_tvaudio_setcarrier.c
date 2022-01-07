
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int dummy; } ;


 int SAA7134_CARRIER1_FREQ0 ;
 int SAA7134_CARRIER2_FREQ0 ;
 int saa_writel (int,int ) ;
 int tvaudio_carr2reg (int) ;

__attribute__((used)) static void tvaudio_setcarrier(struct saa7134_dev *dev,
          int primary, int secondary)
{
 if (-1 == secondary)
  secondary = primary;
 saa_writel(SAA7134_CARRIER1_FREQ0 >> 2, tvaudio_carr2reg(primary));
 saa_writel(SAA7134_CARRIER2_FREQ0 >> 2, tvaudio_carr2reg(secondary));
}
