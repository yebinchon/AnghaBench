
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_buffer {int size; struct drm_buffer** data; } ;


 int DRM_ERROR (char*,int,int,...) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int kfree (struct drm_buffer*) ;
 struct drm_buffer* kmalloc (int ,int ) ;
 struct drm_buffer* kzalloc (int,int ) ;
 int min (int,int) ;

int drm_buffer_alloc(struct drm_buffer **buf, int size)
{
 int nr_pages = size / PAGE_SIZE + 1;
 int idx;



 *buf = kzalloc(sizeof(struct drm_buffer) + nr_pages*sizeof(char *),
   GFP_KERNEL);

 if (*buf == ((void*)0)) {
  DRM_ERROR("Failed to allocate drm buffer object to hold"
    " %d bytes in %d pages.\n",
    size, nr_pages);
  return -ENOMEM;
 }

 (*buf)->size = size;

 for (idx = 0; idx < nr_pages; ++idx) {

  (*buf)->data[idx] =
   kmalloc(min(PAGE_SIZE, size - idx * PAGE_SIZE),
    GFP_KERNEL);


  if ((*buf)->data[idx] == ((void*)0)) {
   DRM_ERROR("Failed to allocate %dth page for drm"
     " buffer with %d bytes and %d pages.\n",
     idx + 1, size, nr_pages);
   goto error_out;
  }

 }

 return 0;

error_out:


 if ((*buf)->data[idx])
  kfree((*buf)->data[idx]);

 for (--idx; idx >= 0; --idx)
  kfree((*buf)->data[idx]);

 kfree(*buf);
 return -ENOMEM;
}
