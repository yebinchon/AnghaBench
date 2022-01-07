
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;
typedef int c ;


 int IRQ_HANDLED ;
 int SIGIO_WRITE_IRQ ;
 int os_read_file (int ,char*,int) ;
 int reactivate_fd (int ,int ) ;
 int sigio_irq_fd ;

__attribute__((used)) static irqreturn_t sigio_interrupt(int irq, void *data)
{
 char c;

 os_read_file(sigio_irq_fd, &c, sizeof(c));
 reactivate_fd(sigio_irq_fd, SIGIO_WRITE_IRQ);
 return IRQ_HANDLED;
}
