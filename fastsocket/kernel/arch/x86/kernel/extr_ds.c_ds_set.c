
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum ds_qualifier { ____Placeholder_ds_qualifier } ds_qualifier ;
typedef enum ds_field { ____Placeholder_ds_field } ds_field ;
struct TYPE_2__ {int sizeof_ptr_field; } ;


 TYPE_1__ ds_cfg ;

__attribute__((used)) static inline void
ds_set(unsigned char *base, enum ds_qualifier qual, enum ds_field field,
       unsigned long value)
{
 base += (ds_cfg.sizeof_ptr_field * (field + (4 * qual)));
 (*(unsigned long *)base) = value;
}
