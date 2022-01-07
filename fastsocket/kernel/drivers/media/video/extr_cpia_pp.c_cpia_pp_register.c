
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_cam_entry {scalar_t__ stream_irq; scalar_t__ streaming; int wq_stream; struct parport* port; struct pardevice* pdev; } ;
struct parport {int modes; } ;
struct pardevice {int dummy; } ;
struct cam_data {int cam_data_list; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int LOG (char*) ;
 int PARPORT_MODE_PCSPP ;
 int cam_list ;
 int cam_list_lock_pp ;
 int cpia_pp_ops ;
 struct cam_data* cpia_register_camera (int *,struct pp_cam_entry*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct pp_cam_entry*) ;
 struct pp_cam_entry* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 struct pardevice* parport_register_device (struct parport*,char*,int *,int *,int *,int ,struct pp_cam_entry*) ;
 int parport_unregister_device (struct pardevice*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int cpia_pp_register(struct parport *port)
{
 struct pardevice *pdev = ((void*)0);
 struct pp_cam_entry *cam;
 struct cam_data *cpia;

 if (!(port->modes & PARPORT_MODE_PCSPP)) {
  LOG("port is not supported by CPiA driver\n");
  return -ENXIO;
 }

 cam = kzalloc(sizeof(struct pp_cam_entry), GFP_KERNEL);
 if (cam == ((void*)0)) {
  LOG("failed to allocate camera structure\n");
  return -ENOMEM;
 }

 pdev = parport_register_device(port, "cpia_pp", ((void*)0), ((void*)0),
           ((void*)0), 0, cam);

 if (!pdev) {
  LOG("failed to parport_register_device\n");
  kfree(cam);
  return -ENXIO;
 }

 cam->pdev = pdev;
 cam->port = port;
 init_waitqueue_head(&cam->wq_stream);

 cam->streaming = 0;
 cam->stream_irq = 0;

 if((cpia = cpia_register_camera(&cpia_pp_ops, cam)) == ((void*)0)) {
  LOG("failed to cpia_register_camera\n");
  parport_unregister_device(pdev);
  kfree(cam);
  return -ENXIO;
 }
 spin_lock( &cam_list_lock_pp );
 list_add( &cpia->cam_data_list, &cam_list );
 spin_unlock( &cam_list_lock_pp );

 return 0;
}
