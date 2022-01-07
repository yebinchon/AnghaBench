
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int irqreturn_t ;
struct TYPE_13__ {int lock; int quiescent; TYPE_2__* mbox; int pend_cmds; } ;
typedef TYPE_3__ adapter_t ;
struct TYPE_11__ {int numstatus; int status; scalar_t__ completed; } ;
struct TYPE_12__ {TYPE_1__ m_in; } ;


 int IRQ_RETVAL (int) ;
 int MAX_FIRMWARE_STATUS ;
 int RDINDOOR (TYPE_3__*) ;
 int RDOUTDOOR (TYPE_3__*) ;
 int WRINDOOR (TYPE_3__*,int) ;
 int WROUTDOOR (TYPE_3__*,int) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_sub (int,int *) ;
 int cpu_relax () ;
 int mega_cmd_done (TYPE_3__*,int*,int,int) ;
 int mega_rundoneq (TYPE_3__*) ;
 int mega_runpendq (TYPE_3__*) ;
 int memcpy (int*,void*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t
megaraid_isr_memmapped(int irq, void *devp)
{
 adapter_t *adapter = devp;
 unsigned long flags;
 u8 status;
 u32 dword = 0;
 u8 nstatus;
 u8 completed[MAX_FIRMWARE_STATUS];
 int handled = 0;





 spin_lock_irqsave(&adapter->lock, flags);

 do {

  dword = RDOUTDOOR(adapter);
  if(dword != 0x10001234) {



   goto out_unlock;
  }
  WROUTDOOR(adapter, 0x10001234);

  while((nstatus = (volatile u8)adapter->mbox->m_in.numstatus)
    == 0xFF) {
   cpu_relax();
  }
  adapter->mbox->m_in.numstatus = 0xFF;

  status = adapter->mbox->m_in.status;




  atomic_sub(nstatus, &adapter->pend_cmds);

  memcpy(completed, (void *)adapter->mbox->m_in.completed,
    nstatus);


  WRINDOOR(adapter, 0x2);

  handled = 1;

  while( RDINDOOR(adapter) & 0x02 )
   cpu_relax();

  mega_cmd_done(adapter, completed, nstatus, status);

  mega_rundoneq(adapter);


  if(atomic_read(&adapter->quiescent) == 0) {
   mega_runpendq(adapter);
  }

 } while(1);

 out_unlock:

 spin_unlock_irqrestore(&adapter->lock, flags);

 return IRQ_RETVAL(handled);
}
