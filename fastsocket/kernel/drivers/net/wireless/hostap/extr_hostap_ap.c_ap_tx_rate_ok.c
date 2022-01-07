
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sta_info {int tx_max_rate; int tx_supp_rates; } ;
struct TYPE_3__ {int tx_rate_control; } ;
typedef TYPE_1__ local_info_t ;



__attribute__((used)) static int ap_tx_rate_ok(int rateidx, struct sta_info *sta,
    local_info_t *local)
{
 if (rateidx > sta->tx_max_rate ||
     !(sta->tx_supp_rates & (1 << rateidx)))
  return 0;

 if (local->tx_rate_control != 0 &&
     !(local->tx_rate_control & (1 << rateidx)))
  return 0;

 return 1;
}
