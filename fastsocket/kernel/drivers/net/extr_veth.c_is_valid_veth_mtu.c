
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_MTU ;
 int MIN_MTU ;

__attribute__((used)) static int is_valid_veth_mtu(int new_mtu)
{
 return (new_mtu >= MIN_MTU && new_mtu <= MAX_MTU);
}
