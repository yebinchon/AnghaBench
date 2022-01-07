
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ports_device {int out_vqs; int in_vqs; TYPE_2__* vdev; } ;
struct TYPE_4__ {TYPE_1__* config; } ;
struct TYPE_3__ {int (* del_vqs ) (TYPE_2__*) ;} ;


 int kfree (int ) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void remove_vqs(struct ports_device *portdev)
{
 portdev->vdev->config->del_vqs(portdev->vdev);
 kfree(portdev->in_vqs);
 kfree(portdev->out_vqs);
}
