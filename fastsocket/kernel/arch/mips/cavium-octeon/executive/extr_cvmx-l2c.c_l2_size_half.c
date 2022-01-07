
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;


 int CVMX_L2D_FUS3 ;
 unsigned long long cvmx_read_csr (int ) ;

__attribute__((used)) static inline int l2_size_half(void)
{
 uint64_t val = cvmx_read_csr(CVMX_L2D_FUS3);
 return !!(val & (1ull << 34));
}
