
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct ifla_vxlan_port_range {int high; int low; } ;
typedef scalar_t__ __u32 ;


 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ERANGE ;
 scalar_t__ ETH_ALEN ;
 size_t IFLA_ADDRESS ;
 size_t IFLA_VXLAN_ID ;
 size_t IFLA_VXLAN_PORT_RANGE ;
 scalar_t__ VXLAN_VID_MASK ;
 int is_valid_ether_addr (struct ifla_vxlan_port_range*) ;
 struct ifla_vxlan_port_range* nla_data (struct nlattr*) ;
 scalar_t__ nla_get_u32 (struct nlattr*) ;
 scalar_t__ nla_len (struct nlattr*) ;
 scalar_t__ ntohs (int ) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static int vxlan_validate(struct nlattr *tb[], struct nlattr *data[])
{
 if (tb[IFLA_ADDRESS]) {
  if (nla_len(tb[IFLA_ADDRESS]) != ETH_ALEN) {
   pr_debug("invalid link address (not ethernet)\n");
   return -EINVAL;
  }

  if (!is_valid_ether_addr(nla_data(tb[IFLA_ADDRESS]))) {
   pr_debug("invalid all zero ethernet address\n");
   return -EADDRNOTAVAIL;
  }
 }

 if (!data)
  return -EINVAL;

 if (data[IFLA_VXLAN_ID]) {
  __u32 id = nla_get_u32(data[IFLA_VXLAN_ID]);
  if (id >= VXLAN_VID_MASK)
   return -ERANGE;
 }

 if (data[IFLA_VXLAN_PORT_RANGE]) {
  const struct ifla_vxlan_port_range *p
   = nla_data(data[IFLA_VXLAN_PORT_RANGE]);

  if (ntohs(p->high) < ntohs(p->low)) {
   pr_debug("port range %u .. %u not valid\n",
     ntohs(p->low), ntohs(p->high));
   return -EINVAL;
  }
 }

 return 0;
}
