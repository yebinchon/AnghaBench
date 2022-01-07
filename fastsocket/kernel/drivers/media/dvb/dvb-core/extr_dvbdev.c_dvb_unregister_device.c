
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_device {size_t minor; struct dvb_device* fops; int list_head; } ;


 int DVB_MAJOR ;
 int MKDEV (int ,size_t) ;
 int device_destroy (int ,int ) ;
 int down_write (int *) ;
 int dvb_class ;
 int ** dvb_minors ;
 int kfree (struct dvb_device*) ;
 int list_del (int *) ;
 int minor_rwsem ;
 int up_write (int *) ;

void dvb_unregister_device(struct dvb_device *dvbdev)
{
 if (!dvbdev)
  return;

 down_write(&minor_rwsem);
 dvb_minors[dvbdev->minor] = ((void*)0);
 up_write(&minor_rwsem);

 device_destroy(dvb_class, MKDEV(DVB_MAJOR, dvbdev->minor));

 list_del (&dvbdev->list_head);
 kfree (dvbdev->fops);
 kfree (dvbdev);
}
