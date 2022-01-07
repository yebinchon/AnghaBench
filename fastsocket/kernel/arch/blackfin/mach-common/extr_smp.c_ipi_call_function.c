
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* func ) (void*) ;int wait; int waitmask; int pending; void* info; } ;
struct ipi_message {TYPE_1__ call_struct; } ;


 int cpu_clear (unsigned int,int ) ;
 int kfree (struct ipi_message*) ;

__attribute__((used)) static void ipi_call_function(unsigned int cpu, struct ipi_message *msg)
{
 int wait;
 void (*func)(void *info);
 void *info;
 func = msg->call_struct.func;
 info = msg->call_struct.info;
 wait = msg->call_struct.wait;
 cpu_clear(cpu, msg->call_struct.pending);
 func(info);
 if (wait)
  cpu_clear(cpu, msg->call_struct.waitmask);
 else
  kfree(msg);
}
