
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce {scalar_t__ finished; } ;
typedef int mce_banks_t ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int machine_check_poll (int ,int *) ;
 int memset (int *,int,int) ;

__attribute__((used)) static void raise_poll(struct mce *m)
{
 unsigned long flags;
 mce_banks_t b;

 memset(&b, 0xff, sizeof(mce_banks_t));
 local_irq_save(flags);
 machine_check_poll(0, &b);
 local_irq_restore(flags);
 m->finished = 0;
}
