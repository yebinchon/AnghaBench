
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ active; scalar_t__ allocated; } ;
struct zoran_fh {scalar_t__ overlay_active; scalar_t__ map_mode; TYPE_3__ buffers; struct zoran* zr; } ;
struct TYPE_5__ {scalar_t__ active; scalar_t__ allocated; } ;
struct TYPE_4__ {scalar_t__ active; scalar_t__ allocated; } ;
struct zoran {scalar_t__ overlay_active; TYPE_2__ jpg_buffers; int spinlock; TYPE_1__ v4l_buffers; int * overlay_mask; int v4l_memgrab_active; scalar_t__ v4l_overlay_active; } ;


 int BUZ_MODE_IDLE ;
 scalar_t__ ZORAN_FREE ;
 scalar_t__ ZORAN_MAP_MODE_RAW ;
 int jpg_fbuffer_free (struct zoran_fh*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int v4l_fbuffer_free (struct zoran_fh*) ;
 int zr36057_enable_jpg (struct zoran*,int ) ;
 int zr36057_overlay (struct zoran*,int ) ;
 int zr36057_set_memgrab (struct zoran*,int ) ;

__attribute__((used)) static void zoran_close_end_session(struct zoran_fh *fh)
{
 struct zoran *zr = fh->zr;


 if (fh->overlay_active != ZORAN_FREE) {
  fh->overlay_active = zr->overlay_active = ZORAN_FREE;
  zr->v4l_overlay_active = 0;
  if (!zr->v4l_memgrab_active)
   zr36057_overlay(zr, 0);
  zr->overlay_mask = ((void*)0);
 }

 if (fh->map_mode == ZORAN_MAP_MODE_RAW) {

  if (fh->buffers.active != ZORAN_FREE) {
   unsigned long flags;

   spin_lock_irqsave(&zr->spinlock, flags);
   zr36057_set_memgrab(zr, 0);
   zr->v4l_buffers.allocated = 0;
   zr->v4l_buffers.active = fh->buffers.active = ZORAN_FREE;
   spin_unlock_irqrestore(&zr->spinlock, flags);
  }


  if (fh->buffers.allocated)
   v4l_fbuffer_free(fh);
 } else {

  if (fh->buffers.active != ZORAN_FREE) {
   zr36057_enable_jpg(zr, BUZ_MODE_IDLE);
   zr->jpg_buffers.allocated = 0;
   zr->jpg_buffers.active = fh->buffers.active = ZORAN_FREE;
  }


  if (fh->buffers.allocated)
   jpg_fbuffer_free(fh);
 }
}
