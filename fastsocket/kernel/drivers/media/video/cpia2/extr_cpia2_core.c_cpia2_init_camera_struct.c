
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camera_data {int present; int wq_stream; int busy_lock; } ;


 int ERR (char*) ;
 int GFP_KERNEL ;
 int init_waitqueue_head (int *) ;
 struct camera_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;

struct camera_data *cpia2_init_camera_struct(void)
{
 struct camera_data *cam;

 cam = kzalloc(sizeof(*cam), GFP_KERNEL);

 if (!cam) {
  ERR("couldn't kmalloc cpia2 struct\n");
  return ((void*)0);
 }


 cam->present = 1;
 mutex_init(&cam->busy_lock);
 init_waitqueue_head(&cam->wq_stream);

 return cam;
}
