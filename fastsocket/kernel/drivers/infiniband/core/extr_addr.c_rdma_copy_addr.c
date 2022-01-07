
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_dev_addr {int bound_dev_if; int dst_dev_addr; int broadcast; int src_dev_addr; int dev_type; } ;
struct net_device {unsigned char const* dev_addr; unsigned char const* broadcast; int ifindex; int type; } ;


 int MAX_ADDR_LEN ;
 int memcpy (int ,unsigned char const*,int ) ;

int rdma_copy_addr(struct rdma_dev_addr *dev_addr, struct net_device *dev,
       const unsigned char *dst_dev_addr)
{
 dev_addr->dev_type = dev->type;
 memcpy(dev_addr->src_dev_addr, dev->dev_addr, MAX_ADDR_LEN);
 memcpy(dev_addr->broadcast, dev->broadcast, MAX_ADDR_LEN);
 if (dst_dev_addr)
  memcpy(dev_addr->dst_dev_addr, dst_dev_addr, MAX_ADDR_LEN);
 dev_addr->bound_dev_if = dev->ifindex;
 return 0;
}
