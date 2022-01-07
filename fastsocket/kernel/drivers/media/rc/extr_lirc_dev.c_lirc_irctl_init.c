
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int minor; } ;
struct irctl {TYPE_1__ d; int irctl_lock; } ;


 int NOPLUG ;
 int mutex_init (int *) ;

__attribute__((used)) static void lirc_irctl_init(struct irctl *ir)
{
 mutex_init(&ir->irctl_lock);
 ir->d.minor = NOPLUG;
}
