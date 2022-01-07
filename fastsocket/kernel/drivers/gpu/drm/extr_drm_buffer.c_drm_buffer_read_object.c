
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_buffer {int ** data; } ;


 int PAGE_SIZE ;
 int drm_buffer_advance (struct drm_buffer*,int) ;
 int drm_buffer_index (struct drm_buffer*) ;
 int drm_buffer_page (struct drm_buffer*) ;
 int memcpy (void*,int *,int) ;

void *drm_buffer_read_object(struct drm_buffer *buf,
  int objsize, void *stack_obj)
{
 int idx = drm_buffer_index(buf);
 int page = drm_buffer_page(buf);
 void *obj = ((void*)0);

 if (idx + objsize <= PAGE_SIZE) {
  obj = &buf->data[page][idx];
 } else {

  int beginsz = PAGE_SIZE - idx;
  memcpy(stack_obj, &buf->data[page][idx], beginsz);

  memcpy(stack_obj + beginsz, &buf->data[page + 1][0],
    objsize - beginsz);

  obj = stack_obj;
 }

 drm_buffer_advance(buf, objsize);
 return obj;
}
