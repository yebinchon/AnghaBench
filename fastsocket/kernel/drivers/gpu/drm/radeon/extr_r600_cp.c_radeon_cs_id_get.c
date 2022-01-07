
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_radeon_private {int cs_id_scnt; int cs_id_wcnt; } ;



__attribute__((used)) static u32 radeon_cs_id_get(struct drm_radeon_private *radeon)
{

 radeon->cs_id_scnt = (radeon->cs_id_scnt + 1) & 0x00FFFFFF;
 if (!radeon->cs_id_scnt) {

  radeon->cs_id_wcnt += 0x01000000;

  radeon->cs_id_scnt = 1;
 }
 return (radeon->cs_id_scnt | radeon->cs_id_wcnt);
}
