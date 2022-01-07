
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_devdata {TYPE_1__* cspec; } ;
struct TYPE_2__ {int portcntrs; int cntrs; } ;


 int kfree (int ) ;
 int qib_7220_free_irq (struct qib_devdata*) ;

__attribute__((used)) static void qib_setup_7220_cleanup(struct qib_devdata *dd)
{
 qib_7220_free_irq(dd);
 kfree(dd->cspec->cntrs);
 kfree(dd->cspec->portcntrs);
}
