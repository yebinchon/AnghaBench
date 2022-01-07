
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ iobase; int control; } ;
typedef TYPE_1__ Adapter ;


 scalar_t__ ASC_CONTROL ;
 int INT_EN ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static inline void wd7000_enable_intr(Adapter * host)
{
 host->control |= INT_EN;
 outb(host->control, host->iobase + ASC_CONTROL);
}
