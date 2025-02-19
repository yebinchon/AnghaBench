
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ipath_devdata {unsigned long long ipath_sdma_generation; } ;


 int WARN_ON (int) ;

__attribute__((used)) static inline void make_sdma_desc(struct ipath_devdata *dd,
 u64 *sdmadesc, u64 addr, u64 dwlen, u64 dwoffset)
{
 WARN_ON(addr & 3);

 sdmadesc[1] = addr >> 32;

 sdmadesc[0] = (addr & 0xfffffffcULL) << 32;

 sdmadesc[0] |= (dd->ipath_sdma_generation & 3ULL) << 30;

 sdmadesc[0] |= (dwlen & 0x7ffULL) << 16;

 sdmadesc[0] |= dwoffset & 0x7ffULL;
}
