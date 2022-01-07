
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long mode; } ;
typedef TYPE_1__ imm_struct ;


 int EINVAL ;
 int printk (char*) ;
 unsigned long simple_strtoul (char*,int *,int ) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static inline int imm_proc_write(imm_struct *dev, char *buffer, int length)
{
 unsigned long x;

 if ((length > 5) && (strncmp(buffer, "mode=", 5) == 0)) {
  x = simple_strtoul(buffer + 5, ((void*)0), 0);
  dev->mode = x;
  return length;
 }
 printk("imm /proc: invalid variable\n");
 return (-EINVAL);
}
