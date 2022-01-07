
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qib_pportdata {unsigned long long sdma_generation; } ;


 int SDMA_DESC_COUNT_LSB ;
 unsigned long long SDMA_DESC_GEN_LSB ;
 int WARN_ON (int) ;

__attribute__((used)) static inline void make_sdma_desc(struct qib_pportdata *ppd,
      u64 *sdmadesc, u64 addr, u64 dwlen,
      u64 dwoffset)
{

 WARN_ON(addr & 3);

 sdmadesc[1] = addr >> 32;

 sdmadesc[0] = (addr & 0xfffffffcULL) << 32;

 sdmadesc[0] |= (ppd->sdma_generation & 3ULL) <<
  SDMA_DESC_GEN_LSB;

 sdmadesc[0] |= (dwlen & 0x7ffULL) << SDMA_DESC_COUNT_LSB;

 sdmadesc[0] |= dwoffset & 0x7ffULL;
}
