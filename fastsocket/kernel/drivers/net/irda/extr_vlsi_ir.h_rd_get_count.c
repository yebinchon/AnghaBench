
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ring_descr {TYPE_1__* hw; } ;
struct TYPE_2__ {int rd_count; } ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static inline u16 rd_get_count(struct ring_descr *rd)
{
 return le16_to_cpu(rd->hw->rd_count);
}
