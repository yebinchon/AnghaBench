
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long sizeof_ptr_field; } ;


 TYPE_1__ ds_cfg ;

__attribute__((used)) static inline unsigned long bts_get(const char *base, unsigned long field)
{
 base += (ds_cfg.sizeof_ptr_field * field);
 return *(unsigned long *)base;
}
