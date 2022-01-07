
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qe_ic {int dummy; } ;
struct TYPE_2__ {struct qe_ic* chip_data; } ;


 TYPE_1__* irq_desc ;

__attribute__((used)) static inline struct qe_ic *qe_ic_from_irq(unsigned int virq)
{
 return irq_desc[virq].chip_data;
}
