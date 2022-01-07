
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int off_dt_strings; } ;


 TYPE_1__* initial_boot_params ;

__attribute__((used)) static inline char *find_flat_dt_string(u32 offset)
{
 return ((char *)initial_boot_params) +
  initial_boot_params->off_dt_strings + offset;
}
