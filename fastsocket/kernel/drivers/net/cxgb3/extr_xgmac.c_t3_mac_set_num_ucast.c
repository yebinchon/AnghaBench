
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmac {int nucast; } ;


 int EINVAL ;
 int EXACT_ADDR_FILTERS ;

int t3_mac_set_num_ucast(struct cmac *mac, int n)
{
 if (n > EXACT_ADDR_FILTERS)
  return -EINVAL;
 mac->nucast = n;
 return 0;
}
