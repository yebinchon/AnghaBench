
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_cycle_counters {int cycles; int rx_frame; int tx_frame; } ;
struct ath_common {int clockrate; struct ath_cycle_counters cc_ani; } ;
typedef int int32_t ;


 int memset (struct ath_cycle_counters*,int ,int) ;

int32_t ath_hw_get_listen_time(struct ath_common *common)
{
 struct ath_cycle_counters *cc = &common->cc_ani;
 int32_t listen_time;

 listen_time = (cc->cycles - cc->rx_frame - cc->tx_frame) /
        (common->clockrate * 1000);

 memset(cc, 0, sizeof(*cc));

 return listen_time;
}
