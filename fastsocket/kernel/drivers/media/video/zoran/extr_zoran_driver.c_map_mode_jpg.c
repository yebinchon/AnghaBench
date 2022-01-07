
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_buffers; int buffer_size; } ;
struct zoran_fh {TYPE_1__ buffers; int map_mode; } ;


 int ZORAN_MAP_MODE_JPG_PLAY ;
 int ZORAN_MAP_MODE_JPG_REC ;
 int jpg_bufsize ;
 int jpg_nbufs ;

__attribute__((used)) static void map_mode_jpg(struct zoran_fh *fh, int play)
{
 fh->map_mode = play ? ZORAN_MAP_MODE_JPG_PLAY : ZORAN_MAP_MODE_JPG_REC;
 fh->buffers.buffer_size = jpg_bufsize;
 fh->buffers.num_buffers = jpg_nbufs;
}
