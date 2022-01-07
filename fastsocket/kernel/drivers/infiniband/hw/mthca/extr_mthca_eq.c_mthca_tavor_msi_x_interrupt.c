
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_eq {int eqn; int cons_index; struct mthca_dev* dev; } ;
struct mthca_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int mthca_eq_int (struct mthca_dev*,struct mthca_eq*) ;
 int tavor_eq_req_not (struct mthca_dev*,int ) ;
 int tavor_set_eq_ci (struct mthca_dev*,struct mthca_eq*,int ) ;

__attribute__((used)) static irqreturn_t mthca_tavor_msi_x_interrupt(int irq, void *eq_ptr)
{
 struct mthca_eq *eq = eq_ptr;
 struct mthca_dev *dev = eq->dev;

 mthca_eq_int(dev, eq);
 tavor_set_eq_ci(dev, eq, eq->cons_index);
 tavor_eq_req_not(dev, eq->eqn);


 return IRQ_HANDLED;
}
