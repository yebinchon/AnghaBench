
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_fh {int dummy; } ;
struct saa7134_dev {scalar_t__ ovenable; } ;


 int saa7134_set_dmabits (struct saa7134_dev*) ;

__attribute__((used)) static int stop_preview(struct saa7134_dev *dev, struct saa7134_fh *fh)
{
 dev->ovenable = 0;
 saa7134_set_dmabits(dev);
 return 0;
}
