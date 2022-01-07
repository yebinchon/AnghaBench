
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t limit_entry; unsigned char ackwidth; unsigned char offset; scalar_t__ sample_reg; int syncreg; } ;
typedef TYPE_2__ nsp32_target ;
struct TYPE_8__ {TYPE_1__* synct; } ;
typedef TYPE_3__ nsp32_hw_data ;
struct TYPE_6__ {unsigned char period_num; unsigned char start_period; unsigned char ackwidth; } ;


 unsigned char SYNC_OFFSET ;
 int TO_SYNCREG (unsigned char,unsigned char) ;

__attribute__((used)) static void nsp32_set_max_sync(nsp32_hw_data *data,
          nsp32_target *target,
          unsigned char *period,
          unsigned char *offset)
{
 unsigned char period_num, ackwidth;

 period_num = data->synct[target->limit_entry].period_num;
 *period = data->synct[target->limit_entry].start_period;
 ackwidth = data->synct[target->limit_entry].ackwidth;
 *offset = SYNC_OFFSET;

 target->syncreg = TO_SYNCREG(period_num, *offset);
 target->ackwidth = ackwidth;
 target->offset = *offset;
 target->sample_reg = 0;
}
