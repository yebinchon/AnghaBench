
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx23885_dev {int dummy; } ;


 int cx23885_irq_disable (struct cx23885_dev*,int) ;

__attribute__((used)) static inline void cx23885_irq_disable_all(struct cx23885_dev *dev)
{
 cx23885_irq_disable(dev, 0xffffffff);
}
