
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct physdev_set_iopl {int iopl; } ;


 int HYPERVISOR_physdev_op (int ,struct physdev_set_iopl*) ;
 int PHYSDEVOP_set_iopl ;

__attribute__((used)) static void xen_set_iopl_mask(unsigned mask)
{
 struct physdev_set_iopl set_iopl;


 set_iopl.iopl = (mask == 0) ? 1 : (mask >> 12) & 3;
 HYPERVISOR_physdev_op(PHYSDEVOP_set_iopl, &set_iopl);
}
