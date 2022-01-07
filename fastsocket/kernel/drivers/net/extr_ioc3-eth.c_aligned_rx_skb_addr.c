
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long IOC3_CACHELINE ;

__attribute__((used)) static inline unsigned long aligned_rx_skb_addr(unsigned long addr)
{
 return (~addr + 1) & (IOC3_CACHELINE - 1UL);
}
