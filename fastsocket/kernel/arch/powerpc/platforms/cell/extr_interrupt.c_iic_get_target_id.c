
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int target_id; } ;


 int iic ;
 TYPE_1__ per_cpu (int ,int) ;

u8 iic_get_target_id(int cpu)
{
 return per_cpu(iic, cpu).target_id;
}
