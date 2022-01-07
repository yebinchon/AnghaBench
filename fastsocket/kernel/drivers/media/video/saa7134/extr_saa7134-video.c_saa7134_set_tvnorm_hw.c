
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct saa7134_dev {TYPE_1__* tvnorm; int ctl_input; } ;
struct TYPE_4__ {scalar_t__ tv; } ;
struct TYPE_3__ {int id; } ;


 TYPE_2__ card_in (struct saa7134_dev*,int ) ;
 int core ;
 int s_std ;
 int saa7134_set_decoder (struct saa7134_dev*) ;
 int saa_call_all (struct saa7134_dev*,int ,int ,int ) ;
 int saa_call_empress (struct saa7134_dev*,int ,int ,int ) ;

void saa7134_set_tvnorm_hw(struct saa7134_dev *dev)
{
 saa7134_set_decoder(dev);

 if (card_in(dev, dev->ctl_input).tv)
  saa_call_all(dev, core, s_std, dev->tvnorm->id);


 saa_call_empress(dev, core, s_std, dev->tvnorm->id);
}
