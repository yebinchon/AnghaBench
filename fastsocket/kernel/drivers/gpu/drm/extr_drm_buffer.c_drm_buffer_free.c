
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_buffer {int size; struct drm_buffer** data; } ;


 int PAGE_SIZE ;
 int kfree (struct drm_buffer*) ;

void drm_buffer_free(struct drm_buffer *buf)
{

 if (buf != ((void*)0)) {

  int nr_pages = buf->size / PAGE_SIZE + 1;
  int idx;
  for (idx = 0; idx < nr_pages; ++idx)
   kfree(buf->data[idx]);

  kfree(buf);
 }
}
