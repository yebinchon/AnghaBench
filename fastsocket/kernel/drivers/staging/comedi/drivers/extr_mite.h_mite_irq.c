
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mite_struct {TYPE_1__* pcidev; } ;
struct TYPE_2__ {unsigned int irq; } ;



__attribute__((used)) static inline unsigned int mite_irq(struct mite_struct *mite)
{
 return mite->pcidev->irq;
}
