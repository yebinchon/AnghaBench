
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {char* ptr; int phase; } ;
struct scsi_cmnd {TYPE_3__ SCp; } ;
struct iscsi_task {int have_checked_conn; int running; void* last_xfer; void* last_timeout; struct scsi_cmnd* sc; struct iscsi_conn* conn; int state; int refcount; } ;
struct iscsi_conn {TYPE_2__* session; } ;
struct TYPE_4__ {int queue; } ;
struct TYPE_5__ {int age; TYPE_1__ cmdpool; } ;


 int INIT_LIST_HEAD (int *) ;
 int ISCSI_TASK_PENDING ;
 int __kfifo_get (int ,void*,int) ;
 int atomic_set (int *,int) ;
 void* jiffies ;

__attribute__((used)) static inline struct iscsi_task *iscsi_alloc_task(struct iscsi_conn *conn,
        struct scsi_cmnd *sc)
{
 struct iscsi_task *task;

 if (!__kfifo_get(conn->session->cmdpool.queue,
    (void *) &task, sizeof(void *)))
  return ((void*)0);

 sc->SCp.phase = conn->session->age;
 sc->SCp.ptr = (char *) task;

 atomic_set(&task->refcount, 1);
 task->state = ISCSI_TASK_PENDING;
 task->conn = conn;
 task->sc = sc;
 task->have_checked_conn = 0;
 task->last_timeout = jiffies;
 task->last_xfer = jiffies;
 INIT_LIST_HEAD(&task->running);
 return task;
}
