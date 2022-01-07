
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int L2X0_CACHE_SYNC ;
 int sync_writel (int ,int ,int) ;

__attribute__((used)) static inline void cache_sync(void)
{
 sync_writel(0, L2X0_CACHE_SYNC, 1);
}
