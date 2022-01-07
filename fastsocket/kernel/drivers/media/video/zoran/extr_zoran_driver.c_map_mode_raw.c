
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_buffers; int buffer_size; } ;
struct zoran_fh {TYPE_1__ buffers; int map_mode; } ;


 int ZORAN_MAP_MODE_RAW ;
 int v4l_bufsize ;
 int v4l_nbufs ;

__attribute__((used)) static void map_mode_raw(struct zoran_fh *fh)
{
 fh->map_mode = ZORAN_MAP_MODE_RAW;
 fh->buffers.buffer_size = v4l_bufsize;
 fh->buffers.num_buffers = v4l_nbufs;
}
