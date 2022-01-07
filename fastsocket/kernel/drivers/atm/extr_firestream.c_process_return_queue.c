
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {int offset; } ;
struct fs_dev {int dummy; } ;
struct FS_QENTRY {long p0; int p2; int p1; int cmd; } ;


 int FS_DEBUG_ALLOC ;
 int FS_DEBUG_QUEUE ;
 long Q_EMPTY ;
 int Q_INCWRAP ;
 int Q_RP (int ) ;
 int STATUS_CODE (struct FS_QENTRY*) ;
 void* bus_to_virt (long) ;
 int fs_dprintk (int ,char*,void*,...) ;
 int kfree (void*) ;
 long read_fs (struct fs_dev*,int ) ;
 int write_fs (struct fs_dev*,int ,int ) ;

__attribute__((used)) static void process_return_queue (struct fs_dev *dev, struct queue *q)
{
 long rq;
 struct FS_QENTRY *qe;
 void *tc;

 while (!((rq = read_fs (dev, Q_RP(q->offset))) & Q_EMPTY)) {
  fs_dprintk (FS_DEBUG_QUEUE, "reaping return queue entry at %lx\n", rq);
  qe = bus_to_virt (rq);

  fs_dprintk (FS_DEBUG_QUEUE, "queue entry: %08x %08x %08x %08x. (%d)\n",
       qe->cmd, qe->p0, qe->p1, qe->p2, STATUS_CODE (qe));

  switch (STATUS_CODE (qe)) {
  case 5:
   tc = bus_to_virt (qe->p0);
   fs_dprintk (FS_DEBUG_ALLOC, "Free tc: %p\n", tc);
   kfree (tc);
   break;
  }

  write_fs (dev, Q_RP(q->offset), Q_INCWRAP);
 }
}
