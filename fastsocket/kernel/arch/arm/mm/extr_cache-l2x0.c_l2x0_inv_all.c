
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int L2X0_INV_WAY ;
 int cache_sync () ;
 int sync_writel (int,int ,int) ;

__attribute__((used)) static inline void l2x0_inv_all(void)
{

 sync_writel(0xff, L2X0_INV_WAY, 0xff);
 cache_sync();
}
