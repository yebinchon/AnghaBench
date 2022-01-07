
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {TYPE_1__* netdev; } ;
typedef TYPE_2__ rtl8150_t ;
typedef int node_id ;
struct TYPE_5__ {int dev_addr; } ;


 int IDR ;
 int get_registers (TYPE_2__*,int ,int,int *) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static inline void set_ethernet_addr(rtl8150_t * dev)
{
 u8 node_id[6];

 get_registers(dev, IDR, sizeof(node_id), node_id);
 memcpy(dev->netdev->dev_addr, node_id, sizeof(node_id));
}
