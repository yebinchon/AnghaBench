
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int wb977_device_select (int) ;
 int wb977_wb (int,int) ;

__attribute__((used)) static inline void wb977_init_printer(void)
{
 wb977_device_select(1);




 wb977_wb(0xf0, 0x01);
}
