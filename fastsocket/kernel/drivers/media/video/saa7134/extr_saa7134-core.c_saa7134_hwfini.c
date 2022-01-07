
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int dummy; } ;


 scalar_t__ card_has_mpeg (struct saa7134_dev*) ;
 int dprintk (char*) ;
 int saa7134_input_fini (struct saa7134_dev*) ;
 int saa7134_ts_fini (struct saa7134_dev*) ;
 int saa7134_tvaudio_fini (struct saa7134_dev*) ;
 int saa7134_vbi_fini (struct saa7134_dev*) ;

__attribute__((used)) static int saa7134_hwfini(struct saa7134_dev *dev)
{
 dprintk("hwfini\n");

 if (card_has_mpeg(dev))
  saa7134_ts_fini(dev);
 saa7134_input_fini(dev);
 saa7134_vbi_fini(dev);
 saa7134_tvaudio_fini(dev);
 return 0;
}
