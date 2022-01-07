
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mem_ctl_info {int dummy; } ;


 int KERN_WARNING ;
 int e752x_mc_printk (struct mem_ctl_info*,int ,char*) ;

__attribute__((used)) static inline void process_threshold_ce(struct mem_ctl_info *mci, u16 error,
     int *error_found, int handle_error)
{
 *error_found = 1;

 if (handle_error)
  e752x_mc_printk(mci, KERN_WARNING, "Memory threshold CE\n");
}
