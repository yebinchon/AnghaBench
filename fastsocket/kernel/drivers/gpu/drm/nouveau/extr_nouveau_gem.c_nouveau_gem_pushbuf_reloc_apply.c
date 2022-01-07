
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct nouveau_cli {int dummy; } ;
struct TYPE_7__ {int num_pages; } ;
struct TYPE_10__ {TYPE_3__* bdev; TYPE_1__ mem; } ;
struct TYPE_11__ {int virtual; } ;
struct nouveau_bo {int validate_mapped; TYPE_4__ bo; TYPE_6__ kmap; } ;
struct drm_nouveau_gem_pushbuf_reloc {size_t bo_index; size_t reloc_bo_index; int reloc_bo_offset; int flags; int data; int tor; int vor; } ;
struct TYPE_8__ {int offset; scalar_t__ domain; scalar_t__ valid; } ;
struct drm_nouveau_gem_pushbuf_bo {TYPE_2__ presumed; scalar_t__ user_priv; } ;
struct drm_nouveau_gem_pushbuf {unsigned int nr_relocs; size_t nr_buffers; int relocs; } ;
struct TYPE_9__ {int fence_lock; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct drm_nouveau_gem_pushbuf_reloc*) ;
 scalar_t__ NOUVEAU_GEM_DOMAIN_GART ;
 int NOUVEAU_GEM_RELOC_HIGH ;
 int NOUVEAU_GEM_RELOC_LOW ;
 int NOUVEAU_GEM_RELOC_OR ;
 int NV_ERROR (struct nouveau_cli*,char*,...) ;
 int PAGE_SHIFT ;
 int PTR_ERR (struct drm_nouveau_gem_pushbuf_reloc*) ;
 int kfree (struct drm_nouveau_gem_pushbuf_reloc*) ;
 int nouveau_bo_wr32 (struct nouveau_bo*,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ttm_bo_kmap (TYPE_4__*,int ,int,TYPE_6__*) ;
 int ttm_bo_wait (TYPE_4__*,int,int,int) ;
 struct drm_nouveau_gem_pushbuf_reloc* u_memcpya (int ,unsigned int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
nouveau_gem_pushbuf_reloc_apply(struct nouveau_cli *cli,
    struct drm_nouveau_gem_pushbuf *req,
    struct drm_nouveau_gem_pushbuf_bo *bo)
{
 struct drm_nouveau_gem_pushbuf_reloc *reloc = ((void*)0);
 int ret = 0;
 unsigned i;

 reloc = u_memcpya(req->relocs, req->nr_relocs, sizeof(*reloc));
 if (IS_ERR(reloc))
  return PTR_ERR(reloc);

 for (i = 0; i < req->nr_relocs; i++) {
  struct drm_nouveau_gem_pushbuf_reloc *r = &reloc[i];
  struct drm_nouveau_gem_pushbuf_bo *b;
  struct nouveau_bo *nvbo;
  uint32_t data;

  if (unlikely(r->bo_index > req->nr_buffers)) {
   NV_ERROR(cli, "reloc bo index invalid\n");
   ret = -EINVAL;
   break;
  }

  b = &bo[r->bo_index];
  if (b->presumed.valid)
   continue;

  if (unlikely(r->reloc_bo_index > req->nr_buffers)) {
   NV_ERROR(cli, "reloc container bo index invalid\n");
   ret = -EINVAL;
   break;
  }
  nvbo = (void *)(unsigned long)bo[r->reloc_bo_index].user_priv;

  if (unlikely(r->reloc_bo_offset + 4 >
        nvbo->bo.mem.num_pages << PAGE_SHIFT)) {
   NV_ERROR(cli, "reloc outside of bo\n");
   ret = -EINVAL;
   break;
  }

  if (!nvbo->kmap.virtual) {
   ret = ttm_bo_kmap(&nvbo->bo, 0, nvbo->bo.mem.num_pages,
       &nvbo->kmap);
   if (ret) {
    NV_ERROR(cli, "failed kmap for reloc\n");
    break;
   }
   nvbo->validate_mapped = 1;
  }

  if (r->flags & NOUVEAU_GEM_RELOC_LOW)
   data = b->presumed.offset + r->data;
  else
  if (r->flags & NOUVEAU_GEM_RELOC_HIGH)
   data = (b->presumed.offset + r->data) >> 32;
  else
   data = r->data;

  if (r->flags & NOUVEAU_GEM_RELOC_OR) {
   if (b->presumed.domain == NOUVEAU_GEM_DOMAIN_GART)
    data |= r->tor;
   else
    data |= r->vor;
  }

  spin_lock(&nvbo->bo.bdev->fence_lock);
  ret = ttm_bo_wait(&nvbo->bo, 0, 0, 0);
  spin_unlock(&nvbo->bo.bdev->fence_lock);
  if (ret) {
   NV_ERROR(cli, "reloc wait_idle failed: %d\n", ret);
   break;
  }

  nouveau_bo_wr32(nvbo, r->reloc_bo_offset >> 2, data);
 }

 kfree(reloc);
 return ret;
}
