
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int id; } ;
struct serio {TYPE_1__* port_data; int close; int open; int write; TYPE_3__ id; int phys; int name; } ;
struct TYPE_9__ {int icount; int seidx; int list; int * tasklet; scalar_t__* serio_oidx; scalar_t__* serio_opacket; TYPE_1__* serio_map; struct serio** serio; int csem; scalar_t__ opercnt; scalar_t__ imatch; int isem; int osem; int lock; scalar_t__ ostarted; scalar_t__ istarted; } ;
typedef TYPE_2__ hil_mlc ;
struct TYPE_8__ {int didx; int di_revmap; TYPE_2__* mlc; } ;


 int BUG_ON (int ) ;
 int GFP_KERNEL ;
 int HILSEN_START ;
 int HIL_MLC_DEVMEM ;
 int hil_mlc_clear_di_map (TYPE_2__*,int ) ;
 int hil_mlc_clear_di_scratch (TYPE_2__*) ;
 int hil_mlc_copy_di_scratch (TYPE_2__*,int) ;
 int hil_mlc_serio_close ;
 TYPE_3__ hil_mlc_serio_id ;
 int hil_mlc_serio_open ;
 int hil_mlc_serio_write ;
 int hil_mlcs ;
 int hil_mlcs_lock ;
 int hil_mlcs_tasklet ;
 int init_MUTEX (int *) ;
 int init_MUTEX_LOCKED (int *) ;
 struct serio* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int rwlock_init (int *) ;
 int serio_register_port (struct serio*) ;
 int snprintf (int ,int,char*,int) ;
 int tasklet_schedule (int *) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

int hil_mlc_register(hil_mlc *mlc)
{
 int i;
 unsigned long flags;

 BUG_ON(mlc == ((void*)0));

 mlc->istarted = 0;
 mlc->ostarted = 0;

 rwlock_init(&mlc->lock);
 init_MUTEX(&mlc->osem);

 init_MUTEX(&mlc->isem);
 mlc->icount = -1;
 mlc->imatch = 0;

 mlc->opercnt = 0;

 init_MUTEX_LOCKED(&(mlc->csem));

 hil_mlc_clear_di_scratch(mlc);
 hil_mlc_clear_di_map(mlc, 0);
 for (i = 0; i < HIL_MLC_DEVMEM; i++) {
  struct serio *mlc_serio;
  hil_mlc_copy_di_scratch(mlc, i);
  mlc_serio = kzalloc(sizeof(*mlc_serio), GFP_KERNEL);
  mlc->serio[i] = mlc_serio;
  snprintf(mlc_serio->name, sizeof(mlc_serio->name)-1, "HIL_SERIO%d", i);
  snprintf(mlc_serio->phys, sizeof(mlc_serio->phys)-1, "HIL%d", i);
  mlc_serio->id = hil_mlc_serio_id;
  mlc_serio->id.id = i;
  mlc_serio->write = hil_mlc_serio_write;
  mlc_serio->open = hil_mlc_serio_open;
  mlc_serio->close = hil_mlc_serio_close;
  mlc_serio->port_data = &(mlc->serio_map[i]);
  mlc->serio_map[i].mlc = mlc;
  mlc->serio_map[i].didx = i;
  mlc->serio_map[i].di_revmap = -1;
  mlc->serio_opacket[i] = 0;
  mlc->serio_oidx[i] = 0;
  serio_register_port(mlc_serio);
 }

 mlc->tasklet = &hil_mlcs_tasklet;

 write_lock_irqsave(&hil_mlcs_lock, flags);
 list_add_tail(&mlc->list, &hil_mlcs);
 mlc->seidx = HILSEN_START;
 write_unlock_irqrestore(&hil_mlcs_lock, flags);

 tasklet_schedule(&hil_mlcs_tasklet);
 return 0;
}
