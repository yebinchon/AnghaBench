
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct raw3270_request {scalar_t__ rc; scalar_t__ rescnt; scalar_t__ view; } ;
struct fs3270 {scalar_t__ rdbuf_size; int wait; TYPE_1__* rdbuf; scalar_t__ fs_pid; } ;
struct TYPE_2__ {int* data; scalar_t__ size; } ;


 int SIGHUP ;
 int kill_pid (scalar_t__,int ,int) ;
 int raw3270_request_reset (struct raw3270_request*) ;
 int wake_up (int *) ;

__attribute__((used)) static void
fs3270_save_callback(struct raw3270_request *rq, void *data)
{
 struct fs3270 *fp;

 fp = (struct fs3270 *) rq->view;


 fp->rdbuf->data[0] -= 5;
 fp->rdbuf->size += 5;







 if (rq->rc != 0 || rq->rescnt == 0) {
  if (fp->fs_pid)
   kill_pid(fp->fs_pid, SIGHUP, 1);
  fp->rdbuf_size = 0;
 } else
  fp->rdbuf_size = fp->rdbuf->size - rq->rescnt;
 raw3270_request_reset(rq);
 wake_up(&fp->wait);
}
