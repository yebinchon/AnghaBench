
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int const u32 ;
struct nv50_disp_priv {int dummy; } ;



__attribute__((used)) static inline u32
nvd0_sor_dp_lane_map(struct nv50_disp_priv *priv, u8 lane)
{
 static const u8 nvd0[] = { 16, 8, 0, 24 };
 return nvd0[lane];
}
