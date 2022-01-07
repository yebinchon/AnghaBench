
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long pfn; } ;
struct virtqueue {TYPE_1__ config; struct virtqueue* next; } ;
struct device {scalar_t__ desc; unsigned long name; scalar_t__ running; struct virtqueue* vq; struct device* next; } ;
struct TYPE_4__ {struct device* dev; } ;


 int STDOUT_FILENO ;
 TYPE_2__ devices ;
 int errx (int,char*,unsigned long) ;
 scalar_t__ from_guest_phys (unsigned long) ;
 unsigned long getpagesize () ;
 unsigned long guest_limit ;
 int start_device (struct device*) ;
 int strnlen (scalar_t__,unsigned long) ;
 int update_device_status (struct device*) ;
 int write (int ,scalar_t__,int ) ;

__attribute__((used)) static void handle_output(unsigned long addr)
{
 struct device *i;


 for (i = devices.dev; i; i = i->next) {
  struct virtqueue *vq;





  if (from_guest_phys(addr) == i->desc) {
   update_device_status(i);
   return;
  }
  for (vq = i->vq; vq; vq = vq->next) {
   if (addr != vq->config.pfn*getpagesize())
    continue;
   if (i->running)
    errx(1, "Notification on running %s", i->name);

   start_device(i);
   return;
  }
 }






 if (addr >= guest_limit)
  errx(1, "Bad NOTIFY %#lx", addr);

 write(STDOUT_FILENO, from_guest_phys(addr),
       strnlen(from_guest_phys(addr), guest_limit - addr));
}
