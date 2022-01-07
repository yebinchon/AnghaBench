
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int active_fds ;
 int irq_lock ;
 int last_irq_ptr ;
 int os_free_irq_by_cb (int (*) (struct irq_fd*,void*),void*,int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void free_irq_by_cb(int (*test)(struct irq_fd *, void *), void *arg)
{
 unsigned long flags;

 spin_lock_irqsave(&irq_lock, flags);
 os_free_irq_by_cb(test, arg, active_fds, &last_irq_ptr);
 spin_unlock_irqrestore(&irq_lock, flags);
}
