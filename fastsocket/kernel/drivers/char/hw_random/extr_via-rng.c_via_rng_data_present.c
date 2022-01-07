
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hwrng {int priv; } ;


 int VIA_RNG_CHUNK_1 ;
 int VIA_XSTORE_CNT_MASK ;
 int udelay (int) ;
 int xstore (int*,int ) ;

__attribute__((used)) static int via_rng_data_present(struct hwrng *rng, int wait)
{
 u32 bytes_out;
 u32 *via_rng_datum = (u32 *)(&rng->priv);
 int i;
 for (i = 0; i < 20; i++) {
  *via_rng_datum = 0;
  bytes_out = xstore(via_rng_datum, VIA_RNG_CHUNK_1);
  bytes_out &= VIA_XSTORE_CNT_MASK;
  if (bytes_out || !wait)
   break;
  udelay(10);
 }
 return bytes_out ? 1 : 0;
}
