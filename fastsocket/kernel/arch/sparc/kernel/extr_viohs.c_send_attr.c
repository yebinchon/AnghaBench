
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vio_driver_state {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* send_attr ) (struct vio_driver_state*) ;} ;


 int stub1 (struct vio_driver_state*) ;

__attribute__((used)) static int send_attr(struct vio_driver_state *vio)
{
 return vio->ops->send_attr(vio);
}
