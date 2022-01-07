
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int register_transport (int *) ;
 int vde_transport ;

__attribute__((used)) static int register_vde(void)
{
 register_transport(&vde_transport);
 return 0;
}
