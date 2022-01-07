
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tg3_napi {scalar_t__ tx_cons; scalar_t__* rx_rcb_prod_idx; scalar_t__ rx_rcb_ptr; struct tg3_hw_status* hw_status; struct tg3* tp; } ;
struct tg3_hw_status {int status; TYPE_1__* idx; } ;
struct tg3 {int dummy; } ;
struct TYPE_2__ {scalar_t__ tx_consumer; } ;


 int POLL_SERDES ;
 int SD_STATUS_LINK_CHG ;
 int USE_LINKCHG_REG ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;

__attribute__((used)) static inline unsigned int tg3_has_work(struct tg3_napi *tnapi)
{
 struct tg3 *tp = tnapi->tp;
 struct tg3_hw_status *sblk = tnapi->hw_status;
 unsigned int work_exists = 0;


 if (!(tg3_flag(tp, USE_LINKCHG_REG) || tg3_flag(tp, POLL_SERDES))) {
  if (sblk->status & SD_STATUS_LINK_CHG)
   work_exists = 1;
 }


 if (sblk->idx[0].tx_consumer != tnapi->tx_cons)
  work_exists = 1;


 if (tnapi->rx_rcb_prod_idx &&
     *(tnapi->rx_rcb_prod_idx) != tnapi->rx_rcb_ptr)
  work_exists = 1;

 return work_exists;
}
