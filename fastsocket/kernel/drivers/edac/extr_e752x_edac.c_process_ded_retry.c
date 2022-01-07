
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mem_ctl_info {int dummy; } ;


 int do_process_ded_retry (struct mem_ctl_info*,int ,int ) ;

__attribute__((used)) static inline void process_ded_retry(struct mem_ctl_info *mci, u16 error,
    u32 retry_add, int *error_found,
    int handle_error)
{
 *error_found = 1;

 if (handle_error)
  do_process_ded_retry(mci, error, retry_add);
}
