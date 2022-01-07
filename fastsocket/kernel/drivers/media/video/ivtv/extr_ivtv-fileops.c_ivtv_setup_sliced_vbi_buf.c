
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ readpos; int bytesused; int buf; } ;
struct TYPE_3__ {int inserted_frame; TYPE_2__ sliced_mpeg_buf; int * sliced_mpeg_size; int * sliced_mpeg_data; } ;
struct ivtv {TYPE_1__ vbi; } ;


 int IVTV_VBI_FRAMES ;

__attribute__((used)) static void ivtv_setup_sliced_vbi_buf(struct ivtv *itv)
{
 int idx = itv->vbi.inserted_frame % IVTV_VBI_FRAMES;

 itv->vbi.sliced_mpeg_buf.buf = itv->vbi.sliced_mpeg_data[idx];
 itv->vbi.sliced_mpeg_buf.bytesused = itv->vbi.sliced_mpeg_size[idx];
 itv->vbi.sliced_mpeg_buf.readpos = 0;
}
