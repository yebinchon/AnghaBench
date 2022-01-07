
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* layers; } ;
struct TYPE_5__ {TYPE_1__ dp; int spa; scalar_t__ hpa; int iodc_io; } ;
struct TYPE_6__ {TYPE_2__ mem_kbd; } ;


 int ENTRY_IO_CIN ;
 TYPE_3__* PAGE0 ;
 int __pa (int*) ;
 int* iodc_dbuf ;
 int* iodc_retbuf ;
 int pdc_lock ;
 int real32_call (int ,unsigned long,int ,int ,int ,int ,int ,int ,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pdc_iodc_getc(void)
{
 int ch;
 int status;
 unsigned long flags;


 if (!PAGE0->mem_kbd.iodc_io)
  return 0;


 spin_lock_irqsave(&pdc_lock, flags);
 real32_call(PAGE0->mem_kbd.iodc_io,
      (unsigned long)PAGE0->mem_kbd.hpa, ENTRY_IO_CIN,
      PAGE0->mem_kbd.spa, __pa(PAGE0->mem_kbd.dp.layers),
      __pa(iodc_retbuf), 0, __pa(iodc_dbuf), 1, 0);

 ch = *iodc_dbuf;
 status = *iodc_retbuf;
 spin_unlock_irqrestore(&pdc_lock, flags);

 if (status == 0)
     return -1;

 return ch;
}
