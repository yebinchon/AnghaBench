
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int of_call_prom (char*,int ,int ) ;

void of_exit(void)
{
 of_call_prom("exit", 0, 0);
}
