
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int (* set_sdram_scrub_rate ) (struct mem_ctl_info*,unsigned long) ;} ;
typedef size_t ssize_t ;


 int EDAC_MC ;
 size_t EINVAL ;
 int KERN_WARNING ;
 int edac_printk (int ,int ,char*,unsigned long) ;
 scalar_t__ strict_strtoul (char const*,int,unsigned long*) ;
 int stub1 (struct mem_ctl_info*,unsigned long) ;

__attribute__((used)) static ssize_t mci_sdram_scrub_rate_store(struct mem_ctl_info *mci,
       const char *data, size_t count)
{
 unsigned long bandwidth = 0;
 int new_bw = 0;

 if (!mci->set_sdram_scrub_rate)
  return -EINVAL;

 if (strict_strtoul(data, 10, &bandwidth) < 0)
  return -EINVAL;

 new_bw = mci->set_sdram_scrub_rate(mci, bandwidth);
 if (new_bw < 0) {
  edac_printk(KERN_WARNING, EDAC_MC,
       "Error setting scrub rate to: %lu\n", bandwidth);
  return -EINVAL;
 }

 return count;
}
