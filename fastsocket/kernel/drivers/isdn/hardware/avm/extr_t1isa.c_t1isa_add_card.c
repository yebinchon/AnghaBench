
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct capi_driver {int dummy; } ;
struct TYPE_7__ {int cardnr; int irq; scalar_t__ port; } ;
typedef TYPE_2__ capicardparams ;
struct TYPE_8__ {int irq; TYPE_1__* resource; } ;
struct TYPE_6__ {scalar_t__ start; } ;


 int ENODEV ;
 int MAX_CARDS ;
 TYPE_3__* isa_dev ;
 scalar_t__ t1isa_probe (TYPE_3__*,int ) ;

__attribute__((used)) static int t1isa_add_card(struct capi_driver *driver, capicardparams *data)
{
 int i;

 for (i = 0; i < MAX_CARDS; i++) {
  if (isa_dev[i].resource[0].start)
   continue;

  isa_dev[i].resource[0].start = data->port;
  isa_dev[i].irq = data->irq;

  if (t1isa_probe(&isa_dev[i], data->cardnr) == 0)
   return 0;
 }
 return -ENODEV;
}
