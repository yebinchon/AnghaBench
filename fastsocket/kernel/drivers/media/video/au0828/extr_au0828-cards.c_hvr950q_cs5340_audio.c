
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au0828_dev {int dummy; } ;


 int REG_000 ;
 int au0828_clear (struct au0828_dev*,int ,int) ;
 int au0828_set (struct au0828_dev*,int ,int) ;

void hvr950q_cs5340_audio(void *priv, int enable)
{


 struct au0828_dev *dev = priv;
 if (enable == 1)
  au0828_set(dev, REG_000, 0x10);
 else
  au0828_clear(dev, REG_000, 0x10);
}
