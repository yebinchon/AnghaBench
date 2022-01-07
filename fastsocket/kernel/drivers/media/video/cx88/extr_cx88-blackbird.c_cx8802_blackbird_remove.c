
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cx8802_driver {TYPE_1__* core; } ;
struct TYPE_2__ {int dvbdev; } ;


 int blackbird_unregister_video (int ) ;

__attribute__((used)) static int cx8802_blackbird_remove(struct cx8802_driver *drv)
{

 blackbird_unregister_video(drv->core->dvbdev);

 return 0;
}
