
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_vm_area (int ) ;
 int ghes_ioremap_area ;

__attribute__((used)) static void ghes_ioremap_exit(void)
{
 free_vm_area(ghes_ioremap_area);
}
