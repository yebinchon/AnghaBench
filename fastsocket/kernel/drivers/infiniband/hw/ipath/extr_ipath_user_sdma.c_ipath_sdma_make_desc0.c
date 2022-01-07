
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ipath_devdata {unsigned long long ipath_sdma_generation; } ;
typedef int __le64 ;


 int cpu_to_le64 (int) ;

__attribute__((used)) static inline __le64 ipath_sdma_make_desc0(struct ipath_devdata *dd,
        u64 addr, u64 dwlen, u64 dwoffset)
{
 return cpu_to_le64(
      ((addr & 0xfffffffcULL) << 32) |

      ((dd->ipath_sdma_generation & 3ULL) << 30) |

      ((dwlen & 0x7ffULL) << 16) |

      (dwoffset & 0x7ffULL));
}
