
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int irq_handler_t ;


 int IRQF_DISABLED ;
 int IRQF_SAMPLE_RANDOM ;
 int IRQ_MAGICIAN_SD ;
 int request_irq (int ,int ,int,char*,void*) ;

__attribute__((used)) static int magician_mci_init(struct device *dev,
    irq_handler_t detect_irq, void *data)
{
 return request_irq(IRQ_MAGICIAN_SD, detect_irq,
    IRQF_DISABLED | IRQF_SAMPLE_RANDOM,
    "mmc card detect", data);
}
