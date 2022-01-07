
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long data; int function; } ;
struct TYPE_3__ {struct saa7146_dev* dev; TYPE_2__ timeout; int queue; } ;
struct saa7146_vv {int vbi_wq; TYPE_1__ vbi_q; } ;
struct saa7146_dev {int dummy; } ;


 int DEB_VBI (char*) ;
 int INIT_LIST_HEAD (int *) ;
 int init_timer (TYPE_2__*) ;
 int init_waitqueue_head (int *) ;
 int saa7146_buffer_timeout ;

__attribute__((used)) static void vbi_init(struct saa7146_dev *dev, struct saa7146_vv *vv)
{
 DEB_VBI(("dev:%p\n",dev));

 INIT_LIST_HEAD(&vv->vbi_q.queue);

 init_timer(&vv->vbi_q.timeout);
 vv->vbi_q.timeout.function = saa7146_buffer_timeout;
 vv->vbi_q.timeout.data = (unsigned long)(&vv->vbi_q);
 vv->vbi_q.dev = dev;

 init_waitqueue_head(&vv->vbi_wq);
}
