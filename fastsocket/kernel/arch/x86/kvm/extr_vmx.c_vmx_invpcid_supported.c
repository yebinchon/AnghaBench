
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_has_vmx_invpcid () ;
 scalar_t__ enable_ept ;

__attribute__((used)) static bool vmx_invpcid_supported(void)
{
 return cpu_has_vmx_invpcid() && enable_ept;
}
