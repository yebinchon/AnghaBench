
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ring_descr {TYPE_1__* hw; } ;
struct TYPE_2__ {int rd_status; } ;


 int RD_ACTIVE ;

__attribute__((used)) static inline int rd_is_active(struct ring_descr *rd)
{
 return ((rd->hw->rd_status & RD_ACTIVE) != 0);
}
