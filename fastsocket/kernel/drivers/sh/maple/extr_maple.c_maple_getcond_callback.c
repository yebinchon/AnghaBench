
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct maple_device {void (* callback ) (struct mapleq*) ;unsigned long interval; int when; int function; } ;


 int cpu_to_be32 (unsigned long) ;
 int jiffies ;

void maple_getcond_callback(struct maple_device *dev,
   void (*callback) (struct mapleq *mq),
   unsigned long interval, unsigned long function)
{
 dev->callback = callback;
 dev->interval = interval;
 dev->function = cpu_to_be32(function);
 dev->when = jiffies;
}
