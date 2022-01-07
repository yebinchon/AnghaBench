
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {size_t intf_num; scalar_t__ si_type; int * thread; int dev; int irq; int si_timer; scalar_t__ last_timeout_jiffies; int (* irq_setup ) (struct smi_info*) ;int intf; } ;
typedef int ipmi_smi_t ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 scalar_t__ SI_BT ;
 scalar_t__ SI_TIMEOUT_JIFFIES ;
 int dev_notice (int ,char*,int ) ;
 int* force_kipmid ;
 int ipmi_thread ;
 scalar_t__ jiffies ;
 int * kthread_run (int ,struct smi_info*,char*,size_t) ;
 int mod_timer (int *,scalar_t__) ;
 size_t num_force_kipmid ;
 int setup_timer (int *,int ,long) ;
 int smi_timeout ;
 int stub1 (struct smi_info*) ;

__attribute__((used)) static int smi_start_processing(void *send_info,
    ipmi_smi_t intf)
{
 struct smi_info *new_smi = send_info;
 int enable = 0;

 new_smi->intf = intf;


 if (new_smi->irq_setup)
  new_smi->irq_setup(new_smi);


 setup_timer(&new_smi->si_timer, smi_timeout, (long)new_smi);
 new_smi->last_timeout_jiffies = jiffies;
 mod_timer(&new_smi->si_timer, jiffies + SI_TIMEOUT_JIFFIES);




 if (new_smi->intf_num < num_force_kipmid)
  enable = force_kipmid[new_smi->intf_num];




 else if ((new_smi->si_type != SI_BT) && (!new_smi->irq))
  enable = 1;

 if (enable) {
  new_smi->thread = kthread_run(ipmi_thread, new_smi,
           "kipmi%d", new_smi->intf_num);
  if (IS_ERR(new_smi->thread)) {
   dev_notice(new_smi->dev, "Could not start"
       " kernel thread due to error %ld, only using"
       " timers to drive the interface\n",
       PTR_ERR(new_smi->thread));
   new_smi->thread = ((void*)0);
  }
 }

 return 0;
}
