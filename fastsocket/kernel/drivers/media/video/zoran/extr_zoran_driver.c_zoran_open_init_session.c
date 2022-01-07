
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {void* active; scalar_t__ allocated; TYPE_3__* buffer; } ;
struct TYPE_5__ {int format; scalar_t__ is_set; } ;
struct zoran_fh {TYPE_4__ buffers; int jpg_settings; int v4l_settings; void* overlay_active; TYPE_1__ overlay_settings; struct zoran* zr; } ;
struct zoran {int jpg_settings; int v4l_settings; TYPE_1__ overlay_settings; } ;
struct TYPE_6__ {int frame; } ;
struct TYPE_7__ {TYPE_2__ bs; int state; } ;


 int BUZ_STATE_USER ;
 int MAX_FRAME ;
 void* ZORAN_FREE ;
 int map_mode_raw (struct zoran_fh*) ;
 int memset (TYPE_4__*,int ,int) ;

__attribute__((used)) static void zoran_open_init_session(struct zoran_fh *fh)
{
 int i;
 struct zoran *zr = fh->zr;


 map_mode_raw(fh);


 fh->overlay_settings = zr->overlay_settings;
 fh->overlay_settings.is_set = 0;
 fh->overlay_settings.format = zr->overlay_settings.format;
 fh->overlay_active = ZORAN_FREE;


 fh->v4l_settings = zr->v4l_settings;

 fh->jpg_settings = zr->jpg_settings;


 memset(&fh->buffers, 0, sizeof(fh->buffers));
 for (i = 0; i < MAX_FRAME; i++) {
  fh->buffers.buffer[i].state = BUZ_STATE_USER;
  fh->buffers.buffer[i].bs.frame = i;
 }
 fh->buffers.allocated = 0;
 fh->buffers.active = ZORAN_FREE;
}
