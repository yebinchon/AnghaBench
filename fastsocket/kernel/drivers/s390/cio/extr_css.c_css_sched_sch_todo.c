
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sch_no; int ssid; } ;
struct subchannel {int todo; int dev; int todo_work; TYPE_1__ schid; } ;
typedef enum sch_todo { ____Placeholder_sch_todo } sch_todo ;


 int CIO_MSG_EVENT (int,char*,int ,int ,int) ;
 int cio_work_q ;
 int get_device (int *) ;
 int put_device (int *) ;
 int queue_work (int ,int *) ;

void css_sched_sch_todo(struct subchannel *sch, enum sch_todo todo)
{
 CIO_MSG_EVENT(4, "sch_todo: sched sch=0.%x.%04x todo=%d\n",
        sch->schid.ssid, sch->schid.sch_no, todo);
 if (sch->todo >= todo)
  return;

 if (!get_device(&sch->dev))
  return;
 sch->todo = todo;
 if (!queue_work(cio_work_q, &sch->todo_work)) {

  put_device(&sch->dev);
 }
}
