
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bitmap; int fd; int * file; } ;
struct ubd {TYPE_1__ cow; int fd; } ;


 int os_close_file (int ) ;
 int vfree (int *) ;

__attribute__((used)) static void ubd_close_dev(struct ubd *ubd_dev)
{
 os_close_file(ubd_dev->fd);
 if(ubd_dev->cow.file == ((void*)0))
  return;

 os_close_file(ubd_dev->cow.fd);
 vfree(ubd_dev->cow.bitmap);
 ubd_dev->cow.bitmap = ((void*)0);
}
