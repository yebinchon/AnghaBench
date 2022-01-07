
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_desc {int read_exec_only; int seg_not_present; } ;


 int memset (struct user_desc*,int ,int) ;

__attribute__((used)) static inline void clear_user_desc(struct user_desc* info)
{

 memset(info, 0, sizeof(*info));





 info->read_exec_only = 1;
 info->seg_not_present = 1;
}
