
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic_port_profile {int mac_addr; int host_uuid; int instance_uuid; int name; } ;


 int ETH_ALEN ;
 int PORT_UUID_MAX ;
 int memcmp (int ,int ,int ) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int enic_are_pp_different(struct enic_port_profile *pp1,
  struct enic_port_profile *pp2)
{
 return strcmp(pp1->name, pp2->name) | !!memcmp(pp1->instance_uuid,
  pp2->instance_uuid, PORT_UUID_MAX) |
  !!memcmp(pp1->host_uuid, pp2->host_uuid, PORT_UUID_MAX) |
  !!memcmp(pp1->mac_addr, pp2->mac_addr, ETH_ALEN);
}
