
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cx18_mdl {scalar_t__ readpos; int bytesused; int * curr_buf; } ;
struct cx18_buffer {scalar_t__ readpos; int bytesused; int buf; } ;
struct TYPE_2__ {int inserted_frame; int * sliced_mpeg_size; int * sliced_mpeg_data; struct cx18_buffer sliced_mpeg_buf; struct cx18_mdl sliced_mpeg_mdl; } ;
struct cx18 {TYPE_1__ vbi; } ;


 int CX18_VBI_FRAMES ;

__attribute__((used)) static void cx18_setup_sliced_vbi_mdl(struct cx18 *cx)
{
 struct cx18_mdl *mdl = &cx->vbi.sliced_mpeg_mdl;
 struct cx18_buffer *buf = &cx->vbi.sliced_mpeg_buf;
 int idx = cx->vbi.inserted_frame % CX18_VBI_FRAMES;

 buf->buf = cx->vbi.sliced_mpeg_data[idx];
 buf->bytesused = cx->vbi.sliced_mpeg_size[idx];
 buf->readpos = 0;

 mdl->curr_buf = ((void*)0);
 mdl->bytesused = cx->vbi.sliced_mpeg_size[idx];
 mdl->readpos = 0;
}
