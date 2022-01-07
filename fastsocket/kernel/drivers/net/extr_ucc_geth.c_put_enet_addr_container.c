
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enet_addr_container {int dummy; } ;


 int kfree (struct enet_addr_container*) ;

__attribute__((used)) static void put_enet_addr_container(struct enet_addr_container *enet_addr_cont)
{
 kfree(enet_addr_cont);
}
