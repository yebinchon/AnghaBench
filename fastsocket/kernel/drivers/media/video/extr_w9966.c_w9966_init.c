
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w9966_dev {scalar_t__ dev_state; int brightness; int contrast; int color; struct parport* pport; int vdev; int * pdev; void* ppmode; scalar_t__ hue; } ;
struct video_device {int dummy; } ;
struct parport {int modes; int name; } ;


 int DPRINTF (char*) ;
 void* IEEE1284_MODE_ECP ;
 void* IEEE1284_MODE_EPP ;
 int PARPORT_MODE_ECP ;
 int PARPORT_MODE_EPP ;
 int VFL_TYPE_GRABBER ;
 int W9966_STATE_PDEV ;
 int W9966_STATE_VDEV ;
 int memcpy (int *,int *,int) ;
 int parmode ;
 int * parport_register_device (struct parport*,char*,int *,int *,int *,int ,int *) ;
 int printk (char*,int ) ;
 int video_nr ;
 scalar_t__ video_register_device (int *,int ,int ) ;
 int video_set_drvdata (int *,struct w9966_dev*) ;
 int w9966_pdev_claim (struct w9966_dev*) ;
 int w9966_pdev_release (struct w9966_dev*) ;
 int w9966_setState (struct w9966_dev*,int ,int ) ;
 scalar_t__ w9966_setup (struct w9966_dev*,int ,int ,int,int,int,int) ;
 int w9966_template ;

__attribute__((used)) static int w9966_init(struct w9966_dev* cam, struct parport* port)
{
 if (cam->dev_state != 0)
  return -1;

 cam->pport = port;
 cam->brightness = 128;
 cam->contrast = 64;
 cam->color = 64;
 cam->hue = 0;


 switch(parmode)
 {
 default:
 case 0:
  if (port->modes & PARPORT_MODE_ECP)
   cam->ppmode = IEEE1284_MODE_ECP;
  else if (port->modes & PARPORT_MODE_EPP)
   cam->ppmode = IEEE1284_MODE_EPP;
  else
   cam->ppmode = IEEE1284_MODE_ECP;
  break;
 case 1:
  cam->ppmode = IEEE1284_MODE_ECP;
  break;
 case 2:
  cam->ppmode = IEEE1284_MODE_EPP;
 break;
 }


 cam->pdev = parport_register_device(port, "w9966", ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0));
 if (cam->pdev == ((void*)0)) {
  DPRINTF("parport_register_device() failed\n");
  return -1;
 }
 w9966_setState(cam, W9966_STATE_PDEV, W9966_STATE_PDEV);

 w9966_pdev_claim(cam);


 if (w9966_setup(cam, 0, 0, 1023, 1023, 200, 160) != 0) {
  DPRINTF("w9966_setup() failed.\n");
  return -1;
 }

 w9966_pdev_release(cam);


 memcpy(&cam->vdev, &w9966_template, sizeof(struct video_device));
 video_set_drvdata(&cam->vdev, cam);

 if (video_register_device(&cam->vdev, VFL_TYPE_GRABBER, video_nr) < 0)
  return -1;

 w9966_setState(cam, W9966_STATE_VDEV, W9966_STATE_VDEV);


 printk(
  "w9966cf: Found and initialized a webcam on %s.\n",
  cam->pport->name
 );
 return 0;
}
