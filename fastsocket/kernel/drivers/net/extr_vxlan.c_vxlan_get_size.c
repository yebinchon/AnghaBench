
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifla_vxlan_port_range {int dummy; } ;
typedef int __u8 ;
typedef int __u32 ;
typedef int __be32 ;
typedef int __be16 ;


 size_t nla_total_size (int) ;

__attribute__((used)) static size_t vxlan_get_size(const struct net_device *dev)
{

 return nla_total_size(sizeof(__u32)) +
  nla_total_size(sizeof(__be32)) +
  nla_total_size(sizeof(__u32)) +
  nla_total_size(sizeof(__be32))+
  nla_total_size(sizeof(__u8)) +
  nla_total_size(sizeof(__u8)) +
  nla_total_size(sizeof(__u8)) +
  nla_total_size(sizeof(__u8)) +
  nla_total_size(sizeof(__u8)) +
  nla_total_size(sizeof(__u8)) +
  nla_total_size(sizeof(__u8)) +
  nla_total_size(sizeof(__u32)) +
  nla_total_size(sizeof(__u32)) +
  nla_total_size(sizeof(struct ifla_vxlan_port_range)) +
  nla_total_size(sizeof(__be16))+
  0;
}
