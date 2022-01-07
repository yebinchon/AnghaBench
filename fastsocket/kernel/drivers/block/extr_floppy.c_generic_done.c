
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int command_status ;
 int * cont ;
 int wakeup_cont ;

__attribute__((used)) static void generic_done(int result)
{
 command_status = result;
 cont = &wakeup_cont;
}
