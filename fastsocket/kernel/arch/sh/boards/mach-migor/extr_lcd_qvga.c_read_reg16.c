
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_sys_bus_ops {unsigned long (* read_data ) (void*) ;int (* write_index ) (void*,int ) ;} ;


 int adjust_reg18 (unsigned short) ;
 int stub1 (void*,int ) ;
 unsigned long stub2 (void*) ;

__attribute__((used)) static unsigned long read_reg16(void *sys_ops_handle,
    struct sh_mobile_lcdc_sys_bus_ops *sys_ops,
    unsigned short reg)
{
 unsigned long data;

 sys_ops->write_index(sys_ops_handle, adjust_reg18(reg));
 data = sys_ops->read_data(sys_ops_handle);
 return ((data >> 1) & 0xff) | ((data >> 2) & 0xff00);
}
