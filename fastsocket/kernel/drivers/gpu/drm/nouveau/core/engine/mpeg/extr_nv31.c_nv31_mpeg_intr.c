
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv31_mpeg_priv {int dummy; } ;
struct nouveau_subdev {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_handle {int object; } ;
struct nouveau_fifo {int (* chid ) (struct nouveau_fifo*,struct nouveau_object*) ;} ;
struct nouveau_engine {int dummy; } ;


 int nouveau_client_name (struct nouveau_object*) ;
 struct nouveau_object* nouveau_engctx_get (struct nouveau_engine*,int) ;
 int nouveau_engctx_put (struct nouveau_object*) ;
 struct nouveau_fifo* nouveau_fifo (struct nouveau_subdev*) ;
 struct nouveau_handle* nouveau_handle_get_class (struct nouveau_object*,int) ;
 int nouveau_handle_put (struct nouveau_handle*) ;
 int nv_call (int ,int,int) ;
 struct nouveau_engine* nv_engine (struct nouveau_subdev*) ;
 int nv_error (struct nv31_mpeg_priv*,char*,int,int,int ,int,int,int,int) ;
 int nv_mask (struct nv31_mpeg_priv*,int,int,int) ;
 int nv_rd32 (struct nv31_mpeg_priv*,int) ;
 int nv_wr32 (struct nv31_mpeg_priv*,int,int) ;
 int stub1 (struct nouveau_fifo*,struct nouveau_object*) ;

void
nv31_mpeg_intr(struct nouveau_subdev *subdev)
{
 struct nouveau_fifo *pfifo = nouveau_fifo(subdev);
 struct nouveau_engine *engine = nv_engine(subdev);
 struct nouveau_object *engctx;
 struct nouveau_handle *handle;
 struct nv31_mpeg_priv *priv = (void *)subdev;
 u32 inst = nv_rd32(priv, 0x00b318) & 0x000fffff;
 u32 stat = nv_rd32(priv, 0x00b100);
 u32 type = nv_rd32(priv, 0x00b230);
 u32 mthd = nv_rd32(priv, 0x00b234);
 u32 data = nv_rd32(priv, 0x00b238);
 u32 show = stat;
 int chid;

 engctx = nouveau_engctx_get(engine, inst);
 chid = pfifo->chid(pfifo, engctx);

 if (stat & 0x01000000) {

  if (type == 0x00000020 && mthd == 0x0000) {
   nv_mask(priv, 0x00b308, 0x00000000, 0x00000000);
   show &= ~0x01000000;
  }

  if (type == 0x00000010) {
   handle = nouveau_handle_get_class(engctx, 0x3174);
   if (handle && !nv_call(handle->object, mthd, data))
    show &= ~0x01000000;
   nouveau_handle_put(handle);
  }
 }

 nv_wr32(priv, 0x00b100, stat);
 nv_wr32(priv, 0x00b230, 0x00000001);

 if (show) {
  nv_error(priv,
    "ch %d [0x%08x %s] 0x%08x 0x%08x 0x%08x 0x%08x\n",
    chid, inst << 4, nouveau_client_name(engctx), stat,
    type, mthd, data);
 }

 nouveau_engctx_put(engctx);
}
