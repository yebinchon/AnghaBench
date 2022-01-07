
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int offset; } ;
struct TYPE_6__ {int length; int index; TYPE_2__ m; int memory; int field; int type; } ;
struct cafe_sio_buffer {TYPE_3__ v4lbuf; struct cafe_camera* cam; scalar_t__ mapcount; int * buffer; int list; } ;
struct TYPE_4__ {int sizeimage; } ;
struct cafe_camera {TYPE_1__ pix_format; struct cafe_sio_buffer* sb_bufs; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int PAGE_ALIGN (int ) ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FIELD_NONE ;
 int V4L2_MEMORY_MMAP ;
 int * vmalloc_user (int) ;

__attribute__((used)) static int cafe_setup_siobuf(struct cafe_camera *cam, int index)
{
 struct cafe_sio_buffer *buf = cam->sb_bufs + index;

 INIT_LIST_HEAD(&buf->list);
 buf->v4lbuf.length = PAGE_ALIGN(cam->pix_format.sizeimage);
 buf->buffer = vmalloc_user(buf->v4lbuf.length);
 if (buf->buffer == ((void*)0))
  return -ENOMEM;
 buf->mapcount = 0;
 buf->cam = cam;

 buf->v4lbuf.index = index;
 buf->v4lbuf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 buf->v4lbuf.field = V4L2_FIELD_NONE;
 buf->v4lbuf.memory = V4L2_MEMORY_MMAP;






 buf->v4lbuf.m.offset = 2*index*buf->v4lbuf.length;
 return 0;
}
