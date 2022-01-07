
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cafe_camera {int n_sbufs; int sb_full; int sb_avail; TYPE_1__* sb_bufs; } ;
struct TYPE_2__ {scalar_t__ mapcount; int buffer; } ;


 int EBUSY ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (TYPE_1__*) ;
 int vfree (int ) ;

__attribute__((used)) static int cafe_free_sio_buffers(struct cafe_camera *cam)
{
 int i;




 for (i = 0; i < cam->n_sbufs; i++)
  if (cam->sb_bufs[i].mapcount > 0)
   return -EBUSY;



 for (i = 0; i < cam->n_sbufs; i++)
  vfree(cam->sb_bufs[i].buffer);
 cam->n_sbufs = 0;
 kfree(cam->sb_bufs);
 cam->sb_bufs = ((void*)0);
 INIT_LIST_HEAD(&cam->sb_avail);
 INIT_LIST_HEAD(&cam->sb_full);
 return 0;
}
