
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdc_busy ;
 int fdc_nested ;
 int fdc_wait ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printk (char*,int,int,int ) ;
 int try_fdc (int) ;
 int wait_event (int ,int ) ;

__attribute__((used)) static void get_fdc(int drive)
{
 unsigned long flags;

 drive &= 3;



 local_irq_save(flags);
 wait_event(fdc_wait, try_fdc(drive));
 fdc_busy = drive;
 fdc_nested++;
 local_irq_restore(flags);
}
