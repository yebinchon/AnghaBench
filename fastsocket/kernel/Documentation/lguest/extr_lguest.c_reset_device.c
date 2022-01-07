
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num; } ;
struct TYPE_3__ {scalar_t__ desc; } ;
struct virtqueue {scalar_t__ thread; TYPE_2__ config; TYPE_1__ vring; struct virtqueue* next; } ;
struct device {int running; struct virtqueue* vq; scalar_t__ feature_len; int name; } ;
typedef scalar_t__ pid_t ;
typedef int lg_last_avail ;


 int LGUEST_VRING_ALIGN ;
 int SIGCHLD ;
 int SIGTERM ;
 void* SIG_IGN ;
 scalar_t__ get_feature_bits (struct device*) ;
 int kill (scalar_t__,int ) ;
 scalar_t__ kill_launcher ;
 int memset (scalar_t__,int ,scalar_t__) ;
 int signal (int ,void*) ;
 int verbose (char*,int ) ;
 scalar_t__ vring_size (int ,int ) ;
 int waitpid (scalar_t__,int *,int ) ;

__attribute__((used)) static void reset_device(struct device *dev)
{
 struct virtqueue *vq;

 verbose("Resetting device %s\n", dev->name);


 memset(get_feature_bits(dev) + dev->feature_len, 0, dev->feature_len);


 signal(SIGCHLD, SIG_IGN);


 for (vq = dev->vq; vq; vq = vq->next) {
  if (vq->thread != (pid_t)-1) {
   kill(vq->thread, SIGTERM);
   waitpid(vq->thread, ((void*)0), 0);
   vq->thread = (pid_t)-1;
  }
  memset(vq->vring.desc, 0,
         vring_size(vq->config.num, LGUEST_VRING_ALIGN));
  lg_last_avail(vq) = 0;
 }
 dev->running = 0;


 signal(SIGCHLD, (void *)kill_launcher);
}
