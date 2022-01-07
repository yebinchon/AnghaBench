
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_DATA ;
 int nw_gpio_modify_io (int ,int ) ;

__attribute__((used)) static inline void netwinder_ds1620_set_data_dir(int dir)
{
 nw_gpio_modify_io(GPIO_DATA, dir ? GPIO_DATA : 0);
}
