
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {scalar_t__ magic; } ;


 scalar_t__ MGSL_MAGIC ;
 int printk (char*,char*,char const*) ;

__attribute__((used)) static inline int sanity_check(struct slgt_info *info, char *devname, const char *name)
{
 if (!info)
  return 1;

 return 0;
}
