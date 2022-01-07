
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 int EADDRNOTAVAIL ;
 int EINVAL ;
 scalar_t__ ETH_ALEN ;
 size_t IFLA_ADDRESS ;
 size_t IFLA_MACVLAN_MODE ;




 int is_valid_ether_addr (int ) ;
 int nla_data (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 scalar_t__ nla_len (struct nlattr*) ;

__attribute__((used)) static int macvlan_validate(struct nlattr *tb[], struct nlattr *data[])
{
 if (tb[IFLA_ADDRESS]) {
  if (nla_len(tb[IFLA_ADDRESS]) != ETH_ALEN)
   return -EINVAL;
  if (!is_valid_ether_addr(nla_data(tb[IFLA_ADDRESS])))
   return -EADDRNOTAVAIL;
 }

 if (data && data[IFLA_MACVLAN_MODE]) {
  switch (nla_get_u32(data[IFLA_MACVLAN_MODE])) {
  case 129:
  case 128:
  case 131:
  case 130:
   break;
  default:
   return -EINVAL;
  }
 }
 return 0;
}
