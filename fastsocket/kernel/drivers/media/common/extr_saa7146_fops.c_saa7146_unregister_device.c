
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct saa7146_dev {int dummy; } ;


 int DEB_EE (char*) ;
 int video_unregister_device (struct video_device*) ;

int saa7146_unregister_device(struct video_device **vid, struct saa7146_dev* dev)
{
 DEB_EE(("dev:%p\n",dev));

 video_unregister_device(*vid);
 *vid = ((void*)0);

 return 0;
}
