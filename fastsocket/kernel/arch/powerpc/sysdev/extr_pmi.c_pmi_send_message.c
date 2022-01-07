
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int type; int data2; int data1; int data0; } ;
typedef TYPE_1__ pmi_message_t ;
struct TYPE_5__ {int msg_mutex; int * completion; int pmi_spinlock; scalar_t__ pmi_reg; TYPE_1__ msg; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int ENODEV ;
 int PMI_TIMEOUT ;
 scalar_t__ PMI_WRITE_DATA0 ;
 scalar_t__ PMI_WRITE_DATA1 ;
 scalar_t__ PMI_WRITE_DATA2 ;
 scalar_t__ PMI_WRITE_TYPE ;
 int completion ;
 TYPE_3__* data ;
 int iowrite8 (int ,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;

int pmi_send_message(pmi_message_t msg)
{
 unsigned long flags;
 DECLARE_COMPLETION_ONSTACK(completion);

 if (!data)
  return -ENODEV;

 mutex_lock(&data->msg_mutex);

 data->msg = msg;
 pr_debug("pmi_send_message: msg is %08x\n", *(u32*)&msg);

 data->completion = &completion;

 spin_lock_irqsave(&data->pmi_spinlock, flags);
 iowrite8(msg.data0, data->pmi_reg + PMI_WRITE_DATA0);
 iowrite8(msg.data1, data->pmi_reg + PMI_WRITE_DATA1);
 iowrite8(msg.data2, data->pmi_reg + PMI_WRITE_DATA2);
 iowrite8(msg.type, data->pmi_reg + PMI_WRITE_TYPE);
 spin_unlock_irqrestore(&data->pmi_spinlock, flags);

 pr_debug("pmi_send_message: wait for completion\n");

 wait_for_completion_interruptible_timeout(data->completion,
        PMI_TIMEOUT);

 data->completion = ((void*)0);

 mutex_unlock(&data->msg_mutex);

 return 0;
}
