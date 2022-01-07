
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IXP_UENGINE_CSR_VIRT_BASE ;

__attribute__((used)) static void *ixp2000_uengine_csr_area(int uengine)
{
 return ((void *)IXP_UENGINE_CSR_VIRT_BASE) + (uengine << 10);
}
