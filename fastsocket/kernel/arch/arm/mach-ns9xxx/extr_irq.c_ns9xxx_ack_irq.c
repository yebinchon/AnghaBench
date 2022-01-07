
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_ISRADDR ;
 int __raw_writel (int ,int ) ;

__attribute__((used)) static void ns9xxx_ack_irq(unsigned int irq)
{
 __raw_writel(0, SYS_ISRADDR);
}
