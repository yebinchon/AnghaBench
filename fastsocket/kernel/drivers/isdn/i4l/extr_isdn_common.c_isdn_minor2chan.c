
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* chanmap; } ;


 TYPE_1__* dev ;

__attribute__((used)) static inline int
isdn_minor2chan(int minor)
{
 return (dev->chanmap[minor]);
}
