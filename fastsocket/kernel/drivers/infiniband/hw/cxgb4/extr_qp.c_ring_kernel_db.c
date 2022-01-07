
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_7__ {int db; } ;
struct c4iw_qp {TYPE_4__* rhp; TYPE_3__ wq; } ;
struct TYPE_5__ {int dbfifo_int_thresh; int * ports; } ;
struct TYPE_6__ {TYPE_1__ lldi; } ;
struct TYPE_8__ {int db_mutex; TYPE_2__ rdev; } ;


 int TASK_UNINTERRUPTIBLE ;
 int V_PIDX (int ) ;
 int V_QID (int ) ;
 int cxgb4_dbfifo_count (int ,int) ;
 int db_delay_usecs ;
 int min (int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;
 int usecs_to_jiffies (int) ;
 int writel (int,int ) ;

__attribute__((used)) static int ring_kernel_db(struct c4iw_qp *qhp, u32 qid, u16 inc)
{
 int delay = db_delay_usecs;

 mutex_lock(&qhp->rhp->db_mutex);
 do {





  if (cxgb4_dbfifo_count(qhp->rhp->rdev.lldi.ports[0], 1) <
      (qhp->rhp->rdev.lldi.dbfifo_int_thresh << 5)) {
   writel(V_QID(qid) | V_PIDX(inc), qhp->wq.db);
   break;
  }
  set_current_state(TASK_UNINTERRUPTIBLE);
  schedule_timeout(usecs_to_jiffies(delay));
  delay = min(delay << 1, 2000);
 } while (1);
 mutex_unlock(&qhp->rhp->db_mutex);
 return 0;
}
