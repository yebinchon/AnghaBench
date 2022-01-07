
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct drm_buf {scalar_t__ used; int * file_priv; scalar_t__ pending; scalar_t__ waiting; } ;



void drm_free_buffer(struct drm_device *dev, struct drm_buf * buf)
{
 if (!buf)
  return;

 buf->waiting = 0;
 buf->pending = 0;
 buf->file_priv = ((void*)0);
 buf->used = 0;
}
