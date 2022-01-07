
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __restore_processor_state (int *) ;
 int saved_context ;

void restore_processor_state(void)
{
 __restore_processor_state(&saved_context);
}
