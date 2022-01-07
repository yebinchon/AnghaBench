
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct iwl_priv {int dummy; } ;



__attribute__((used)) static inline u32 iwl_beacon_time_mask_low(struct iwl_priv *priv,
        u16 tsf_bits)
{
 return (1 << tsf_bits) - 1;
}
