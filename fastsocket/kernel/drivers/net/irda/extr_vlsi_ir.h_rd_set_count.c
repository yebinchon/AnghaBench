
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ring_descr {TYPE_1__* hw; } ;
struct TYPE_2__ {int rd_count; } ;


 int cpu_to_le16 (int ) ;

__attribute__((used)) static inline void rd_set_count(struct ring_descr *rd, u16 c)
{
 rd->hw->rd_count = cpu_to_le16(c);
}
