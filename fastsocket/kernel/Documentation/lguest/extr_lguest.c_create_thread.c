
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long pfn; } ;
struct virtqueue {unsigned long eventfd; scalar_t__ thread; TYPE_1__ config; } ;
typedef scalar_t__ pid_t ;
typedef int args ;


 int CLONE_VM ;
 unsigned long LHREQ_EVENTFD ;
 int SIGCHLD ;
 scalar_t__ clone (int ,char*,int,struct virtqueue*) ;
 int close (unsigned long) ;
 int do_thread ;
 int err (int,char*) ;
 unsigned long eventfd (int ,int ) ;
 unsigned long getpagesize () ;
 int lguest_fd ;
 char* malloc (int) ;
 scalar_t__ write (int ,unsigned long**,int) ;

__attribute__((used)) static void create_thread(struct virtqueue *vq)
{




 char *stack = malloc(32768);
 unsigned long args[] = { LHREQ_EVENTFD,
     vq->config.pfn*getpagesize(), 0 };


 vq->eventfd = eventfd(0, 0);
 if (vq->eventfd < 0)
  err(1, "Creating eventfd");
 args[2] = vq->eventfd;





 if (write(lguest_fd, &args, sizeof(args)) != 0)
  err(1, "Attaching eventfd");





 vq->thread = clone(do_thread, stack + 32768, CLONE_VM | SIGCHLD, vq);
 if (vq->thread == (pid_t)-1)
  err(1, "Creating clone");


 close(vq->eventfd);
}
