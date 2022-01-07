
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rx_ring_info {int dummy; } ;


 int MAX_RBR_RING_SIZE ;
 int PAGE_SHIFT ;
 int ilog2 (int) ;

__attribute__((used)) static unsigned int niu_hash_rxaddr(struct rx_ring_info *rp, u64 a)
{
 a >>= PAGE_SHIFT;
 a ^= (a >> ilog2(MAX_RBR_RING_SIZE));

 return (a & (MAX_RBR_RING_SIZE - 1));
}
