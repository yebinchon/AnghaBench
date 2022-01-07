
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nv50_mpeg_priv {int dummy; } ;
struct nouveau_subdev {int dummy; } ;


 int nv50_mpeg_intr (struct nouveau_subdev*) ;
 int nv_info (struct nv50_mpeg_priv*,char*,scalar_t__) ;
 scalar_t__ nv_rd32 (struct nv50_mpeg_priv*,int) ;
 int nv_wr32 (struct nv50_mpeg_priv*,int,scalar_t__) ;

__attribute__((used)) static void
nv50_vpe_intr(struct nouveau_subdev *subdev)
{
 struct nv50_mpeg_priv *priv = (void *)subdev;

 if (nv_rd32(priv, 0x00b100))
  nv50_mpeg_intr(subdev);

 if (nv_rd32(priv, 0x00b800)) {
  u32 stat = nv_rd32(priv, 0x00b800);
  nv_info(priv, "PMSRCH: 0x%08x\n", stat);
  nv_wr32(priv, 0xb800, stat);
 }
}
