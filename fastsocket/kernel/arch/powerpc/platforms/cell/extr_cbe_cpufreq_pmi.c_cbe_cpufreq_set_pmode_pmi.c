
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int data2; int data1; int type; } ;
typedef TYPE_1__ pmi_message_t ;


 int PMI_TYPE_FREQ_CHANGE ;
 int cbe_cpu_to_node (int) ;
 long jiffies ;
 long jiffies_to_msecs (long) ;
 int pmi_send_message (TYPE_1__) ;
 int pr_debug (char*,int) ;

int cbe_cpufreq_set_pmode_pmi(int cpu, unsigned int pmode)
{
 int ret;
 pmi_message_t pmi_msg;



 pmi_msg.type = PMI_TYPE_FREQ_CHANGE;
 pmi_msg.data1 = cbe_cpu_to_node(cpu);
 pmi_msg.data2 = pmode;




 pmi_send_message(pmi_msg);







 ret = pmi_msg.data2;
 pr_debug("PMI returned slow mode %d\n", ret);

 return ret;
}
