
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ MLX4_VGT ;

__attribute__((used)) static int calculate_transition(u16 oper_vlan, u16 admin_vlan)
{
 return (2 * (oper_vlan == MLX4_VGT) + (admin_vlan == MLX4_VGT));
}
