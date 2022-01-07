
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_eq {struct mlx4_dev* dev; } ;
struct mlx4_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int mlx4_eq_int (struct mlx4_dev*,struct mlx4_eq*) ;

__attribute__((used)) static irqreturn_t mlx4_msi_x_interrupt(int irq, void *eq_ptr)
{
 struct mlx4_eq *eq = eq_ptr;
 struct mlx4_dev *dev = eq->dev;

 mlx4_eq_int(dev, eq);


 return IRQ_HANDLED;
}
