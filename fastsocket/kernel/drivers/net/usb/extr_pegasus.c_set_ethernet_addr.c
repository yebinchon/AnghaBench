
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int features; TYPE_1__* net; } ;
typedef TYPE_2__ pegasus_t ;
typedef int node_id ;
typedef int __u8 ;
struct TYPE_7__ {int dev_addr; } ;


 int EthID ;
 int PEGASUS_II ;
 int get_node_id (TYPE_2__*,int *) ;
 int get_registers (TYPE_2__*,int,int,int *) ;
 int memcpy (int ,int *,int) ;
 int set_registers (TYPE_2__*,int ,int,int *) ;

__attribute__((used)) static void set_ethernet_addr(pegasus_t * pegasus)
{
 __u8 node_id[6];

 if (pegasus->features & PEGASUS_II) {
  get_registers(pegasus, 0x10, sizeof(node_id), node_id);
 } else {
  get_node_id(pegasus, node_id);
  set_registers(pegasus, EthID, sizeof (node_id), node_id);
 }
 memcpy(pegasus->net->dev_addr, node_id, sizeof (node_id));
}
