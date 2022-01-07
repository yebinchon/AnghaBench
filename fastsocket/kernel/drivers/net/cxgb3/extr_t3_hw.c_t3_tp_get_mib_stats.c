
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tp_mib_stats {int dummy; } ;
struct adapter {int dummy; } ;


 int A_TP_MIB_INDEX ;
 int A_TP_MIB_RDATA ;
 int t3_read_indirect (struct adapter*,int ,int ,int *,int,int ) ;

void t3_tp_get_mib_stats(struct adapter *adap, struct tp_mib_stats *tps)
{
 t3_read_indirect(adap, A_TP_MIB_INDEX, A_TP_MIB_RDATA, (u32 *) tps,
    sizeof(*tps) / sizeof(u32), 0);
}
