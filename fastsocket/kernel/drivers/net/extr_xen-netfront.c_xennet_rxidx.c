
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RING_IDX ;


 int NET_RX_RING_SIZE ;

__attribute__((used)) static int xennet_rxidx(RING_IDX idx)
{
 return idx & (NET_RX_RING_SIZE - 1);
}
