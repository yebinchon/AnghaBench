
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num; } ;
struct virtqueue {TYPE_2__ vring; TYPE_1__* dev; } ;
struct timeval {scalar_t__ tv_sec; } ;
struct iovec {scalar_t__ iov_base; } ;
struct console_abort {int count; struct timeval start; } ;
struct TYPE_3__ {struct console_abort* priv; } ;


 int SIGINT ;
 int STDIN_FILENO ;
 int add_used_and_trigger (struct virtqueue*,unsigned int,int) ;
 int errx (int,char*) ;
 int gettimeofday (struct timeval*,int *) ;
 int kill (int ,int ) ;
 int pause () ;
 int readv (int ,struct iovec*,unsigned int) ;
 unsigned int wait_for_vq_desc (struct virtqueue*,struct iovec*,unsigned int*,unsigned int*) ;
 int warnx (char*) ;

__attribute__((used)) static void console_input(struct virtqueue *vq)
{
 int len;
 unsigned int head, in_num, out_num;
 struct console_abort *abort = vq->dev->priv;
 struct iovec iov[vq->vring.num];


 head = wait_for_vq_desc(vq, iov, &out_num, &in_num);
 if (out_num)
  errx(1, "Output buffers in console in queue?");


 len = readv(STDIN_FILENO, iov, in_num);
 if (len <= 0) {

  warnx("Failed to get console input, ignoring console.");




  for (;;)
   pause();
 }


 add_used_and_trigger(vq, head, len);
 if (len != 1 || ((char *)iov[0].iov_base)[0] != 3) {
  abort->count = 0;
  return;
 }

 abort->count++;
 if (abort->count == 1)
  gettimeofday(&abort->start, ((void*)0));
 else if (abort->count == 3) {
  struct timeval now;
  gettimeofday(&now, ((void*)0));

  if (now.tv_sec <= abort->start.tv_sec+1)
   kill(0, SIGINT);
  abort->count = 0;
 }
}
