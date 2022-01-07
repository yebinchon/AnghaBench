
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ magic; } ;
typedef TYPE_1__ MGSLPC_INFO ;


 scalar_t__ MGSLPC_MAGIC ;
 int printk (char const*,char*,char const*) ;

__attribute__((used)) static inline bool mgslpc_paranoia_check(MGSLPC_INFO *info,
     char *name, const char *routine)
{
 if (!info)
  return 1;

 return 0;
}
