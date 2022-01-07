
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tg3 {scalar_t__ ptp_adjust; } ;
struct skb_shared_hwtstamps {int hwtstamp; } ;


 int TG3_TSTAMP_MASK ;
 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 int ns_to_ktime (scalar_t__) ;

__attribute__((used)) static void tg3_hwclock_to_timestamp(struct tg3 *tp, u64 hwclock,
         struct skb_shared_hwtstamps *timestamp)
{
 memset(timestamp, 0, sizeof(struct skb_shared_hwtstamps));
 timestamp->hwtstamp = ns_to_ktime((hwclock & TG3_TSTAMP_MASK) +
        tp->ptp_adjust);
}
