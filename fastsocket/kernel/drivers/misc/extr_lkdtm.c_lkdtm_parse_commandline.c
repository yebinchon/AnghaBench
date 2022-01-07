
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int *) ;
 scalar_t__ CT_NONE ;
 int EINVAL ;
 int count ;
 int count_lock ;
 int * cp_name ;
 int cpoint ;
 int cpoint_count ;
 int cpoint_name ;
 int cpoint_type ;
 scalar_t__ cptype ;
 scalar_t__ parse_cp_type (int ,int ) ;
 int recur_count ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strcmp (int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int lkdtm_parse_commandline(void)
{
 int i;
 unsigned long flags;

 if (cpoint_count < 1 || recur_count < 1)
  return -EINVAL;

 spin_lock_irqsave(&count_lock, flags);
 count = cpoint_count;
 spin_unlock_irqrestore(&count_lock, flags);


 if (!cpoint_type && !cpoint_name)
  return 0;


 if (!cpoint_type || !cpoint_name)
  return -EINVAL;

 cptype = parse_cp_type(cpoint_type, strlen(cpoint_type));
 if (cptype == CT_NONE)
  return -EINVAL;

 for (i = 0; i < ARRAY_SIZE(cp_name); i++) {
  if (!strcmp(cpoint_name, cp_name[i])) {
   cpoint = i + 1;
   return 0;
  }
 }


 return -EINVAL;
}
