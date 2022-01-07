
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct pcc_cpu {scalar_t__ input_offset; } ;
struct cpufreq_policy {int cpu; } ;
struct cpufreq_freqs {unsigned int new; int cpu; } ;
struct TYPE_2__ {int status; int command; int nominal; } ;


 int BUF_SZ ;
 int CMD_COMPLETE ;
 int CMD_SET_FREQ ;
 int CPUFREQ_POSTCHANGE ;
 int CPUFREQ_PRECHANGE ;
 int EINVAL ;
 int cpufreq_notify_transition (struct cpufreq_freqs*,int ) ;
 int dprintk (char*,int,...) ;
 int ioread16 (int *) ;
 int ioread32 (int *) ;
 int iowrite16 (int ,int *) ;
 int iowrite32 (int,scalar_t__) ;
 int memset_io (scalar_t__,int ,int ) ;
 int pcc_cmd () ;
 int pcc_cpu_info ;
 int pcc_lock ;
 TYPE_1__* pcch_hdr ;
 scalar_t__ pcch_virt_addr ;
 struct pcc_cpu* per_cpu_ptr (int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int pcc_cpufreq_target(struct cpufreq_policy *policy,
         unsigned int target_freq,
         unsigned int relation)
{
 struct pcc_cpu *pcc_cpu_data;
 struct cpufreq_freqs freqs;
 u16 status;
 u32 input_buffer;
 int cpu;

 spin_lock(&pcc_lock);
 cpu = policy->cpu;
 pcc_cpu_data = per_cpu_ptr(pcc_cpu_info, cpu);

 dprintk("target: CPU %d should go to target freq: %d "
  "(virtual) input_offset is 0x%x\n",
  cpu, target_freq,
  (pcch_virt_addr + pcc_cpu_data->input_offset));

 freqs.new = target_freq;
 freqs.cpu = cpu;
 cpufreq_notify_transition(&freqs, CPUFREQ_PRECHANGE);

 input_buffer = 0x1 | (((target_freq * 100)
          / (ioread32(&pcch_hdr->nominal) * 1000)) << 8);
 iowrite32(input_buffer,
   (pcch_virt_addr + pcc_cpu_data->input_offset));
 iowrite16(CMD_SET_FREQ, &pcch_hdr->command);

 pcc_cmd();


 memset_io((pcch_virt_addr + pcc_cpu_data->input_offset), 0, BUF_SZ);

 status = ioread16(&pcch_hdr->status);
 if (status != CMD_COMPLETE) {
  dprintk("target: FAILED for cpu %d, with status: 0x%x\n",
   cpu, status);
  goto cmd_incomplete;
 }
 iowrite16(0, &pcch_hdr->status);

 cpufreq_notify_transition(&freqs, CPUFREQ_POSTCHANGE);
 dprintk("target: was SUCCESSFUL for cpu %d\n", cpu);
 spin_unlock(&pcc_lock);

 return 0;

cmd_incomplete:
 iowrite16(0, &pcch_hdr->status);
 spin_unlock(&pcc_lock);
 return -EINVAL;
}
