
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int irqmask; int irqaddr; } ;
typedef TYPE_1__ ecard_t ;


 int readb (int ) ;

__attribute__((used)) static int ecard_def_irq_pending(ecard_t *ec)
{
 return !ec->irqmask || readb(ec->irqaddr) & ec->irqmask;
}
