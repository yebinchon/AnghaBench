
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7134_dev {TYPE_1__* remote; } ;
struct rc_dev {struct saa7134_dev* priv; } ;
struct TYPE_2__ {int users; } ;


 int __saa7134_ir_start (struct saa7134_dev*) ;

__attribute__((used)) static int saa7134_ir_open(struct rc_dev *rc)
{
 struct saa7134_dev *dev = rc->priv;

 dev->remote->users++;
 return __saa7134_ir_start(dev);
}
