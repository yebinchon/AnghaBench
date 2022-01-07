
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETH_MAX_TPA_HEADER_SIZE ;
 int MAX_SKB_FRAGS ;
 int SGE_PAGE_SIZE ;
 int U_ETH_SGL_SIZE ;

__attribute__((used)) static inline bool bnx2x_mtu_allows_gro(int mtu)
{

 int fpp = SGE_PAGE_SIZE / (mtu - ETH_MAX_TPA_HEADER_SIZE);





 return mtu <= SGE_PAGE_SIZE && (U_ETH_SGL_SIZE * fpp) <= MAX_SKB_FRAGS;
}
