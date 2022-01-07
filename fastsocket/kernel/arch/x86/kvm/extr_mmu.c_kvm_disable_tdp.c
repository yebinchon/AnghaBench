
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tdp_enabled ;

void kvm_disable_tdp(void)
{
 tdp_enabled = 0;
}
