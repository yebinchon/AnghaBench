
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct bq27x00_device_info {TYPE_1__* bus; } ;
struct TYPE_2__ {int (* read ) (int ,int*,int,struct bq27x00_device_info*) ;} ;


 int be16_to_cpu (int) ;
 int stub1 (int ,int*,int,struct bq27x00_device_info*) ;

__attribute__((used)) static int bq27x00_read(u8 reg, int *rt_value, int b_single,
   struct bq27x00_device_info *di)
{
 int ret;

 ret = di->bus->read(reg, rt_value, b_single, di);
 *rt_value = be16_to_cpu(*rt_value);

 return ret;
}
