
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_fifo_priv {int base; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_fifo_init (int *) ;
 int nv50_fifo_playlist_update (struct nv50_fifo_priv*) ;
 int nv_mask (struct nv50_fifo_priv*,int,int,int) ;
 int nv_wr32 (struct nv50_fifo_priv*,int,int) ;

int
nv50_fifo_init(struct nouveau_object *object)
{
 struct nv50_fifo_priv *priv = (void *)object;
 int ret, i;

 ret = nouveau_fifo_init(&priv->base);
 if (ret)
  return ret;

 nv_mask(priv, 0x000200, 0x00000100, 0x00000000);
 nv_mask(priv, 0x000200, 0x00000100, 0x00000100);
 nv_wr32(priv, 0x00250c, 0x6f3cfc34);
 nv_wr32(priv, 0x002044, 0x01003fff);

 nv_wr32(priv, 0x002100, 0xffffffff);
 nv_wr32(priv, 0x002140, 0xbfffffff);

 for (i = 0; i < 128; i++)
  nv_wr32(priv, 0x002600 + (i * 4), 0x00000000);
 nv50_fifo_playlist_update(priv);

 nv_wr32(priv, 0x003200, 0x00000001);
 nv_wr32(priv, 0x003250, 0x00000001);
 nv_wr32(priv, 0x002500, 0x00000001);
 return 0;
}
