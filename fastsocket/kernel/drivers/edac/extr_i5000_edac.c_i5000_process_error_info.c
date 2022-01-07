
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int dummy; } ;
struct i5000_error_info {int dummy; } ;


 int i5000_process_fatal_error_info (struct mem_ctl_info*,struct i5000_error_info*,int) ;
 int i5000_process_nonfatal_error_info (struct mem_ctl_info*,struct i5000_error_info*,int) ;

__attribute__((used)) static void i5000_process_error_info(struct mem_ctl_info *mci,
    struct i5000_error_info *info,
    int handle_errors)
{

 i5000_process_fatal_error_info(mci, info, handle_errors);


 i5000_process_nonfatal_error_info(mci, info, handle_errors);
}
