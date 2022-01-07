
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arch_reset (int ,int *) ;

__attribute__((used)) static void lsmini_power_off(void)
{
 arch_reset(0, ((void*)0));
}
