
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int const u32 ;
struct nv50_disp_priv {int dummy; } ;
struct TYPE_2__ {int chipset; } ;


 TYPE_1__* nv_device (struct nv50_disp_priv*) ;

__attribute__((used)) static inline u32
nv94_sor_dp_lane_map(struct nv50_disp_priv *priv, u8 lane)
{
 static const u8 nvaf[] = { 24, 16, 8, 0 };
 static const u8 nv94[] = { 16, 8, 0, 24 };
 if (nv_device(priv)->chipset == 0xaf)
  return nvaf[lane];
 return nv94[lane];
}
