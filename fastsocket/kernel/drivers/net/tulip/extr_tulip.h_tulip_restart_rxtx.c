
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tulip_private {int dummy; } ;


 int tulip_start_rxtx (struct tulip_private*) ;
 int tulip_stop_rxtx (struct tulip_private*) ;
 int udelay (int) ;

__attribute__((used)) static inline void tulip_restart_rxtx(struct tulip_private *tp)
{
 tulip_stop_rxtx(tp);
 udelay(5);
 tulip_start_rxtx(tp);
}
