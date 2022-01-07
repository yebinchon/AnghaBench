
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int ptp_info; scalar_t__ ptp_adjust; } ;


 int PTP_CAPABLE ;
 int ktime_get_real () ;
 int ktime_to_ns (int ) ;
 int tg3_flag (struct tg3*,int ) ;
 int tg3_ptp_caps ;
 int tg3_refclk_write (struct tg3*,int ) ;

__attribute__((used)) static void tg3_ptp_init(struct tg3 *tp)
{
 if (!tg3_flag(tp, PTP_CAPABLE))
  return;


 tg3_refclk_write(tp, ktime_to_ns(ktime_get_real()));
 tp->ptp_adjust = 0;
 tp->ptp_info = tg3_ptp_caps;
}
