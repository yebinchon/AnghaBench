
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_prime_member {int entry; int handle; struct dma_buf* dma_buf; } ;
struct drm_prime_file_private {int head; } ;
struct dma_buf {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int get_dma_buf (struct dma_buf*) ;
 struct drm_prime_member* kmalloc (int,int ) ;
 int list_add (int *,int *) ;

__attribute__((used)) static int drm_prime_add_buf_handle(struct drm_prime_file_private *prime_fpriv, struct dma_buf *dma_buf, uint32_t handle)
{
 struct drm_prime_member *member;

 member = kmalloc(sizeof(*member), GFP_KERNEL);
 if (!member)
  return -ENOMEM;

 get_dma_buf(dma_buf);
 member->dma_buf = dma_buf;
 member->handle = handle;
 list_add(&member->entry, &prime_fpriv->head);
 return 0;
}
