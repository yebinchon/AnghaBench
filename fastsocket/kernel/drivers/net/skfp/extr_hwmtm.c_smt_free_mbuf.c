
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* mb_free; } ;
struct TYPE_8__ {TYPE_1__ mbuf_pool; } ;
struct TYPE_9__ {TYPE_2__ hwm; } ;
struct s_smc {TYPE_3__ os; } ;
struct TYPE_10__ {void* sm_use_count; struct TYPE_10__* sm_next; } ;
typedef TYPE_4__ SMbuf ;


 int DB_GEN (char*,void*,int ,int) ;
 int HWM_E0003 ;
 int HWM_E0003_MSG ;
 int SMT_PANIC (struct s_smc*,int ,int ) ;
 TYPE_4__* mb_free ;

void smt_free_mbuf(struct s_smc *smc, SMbuf *mb)
{

 if (mb) {
  mb->sm_use_count-- ;
  DB_GEN("free_mbuf: sm_use_count = %d",mb->sm_use_count,0,3) ;





  if (!mb->sm_use_count) {
   DB_GEN("free SMbuf: mb = %x",(void *)mb,0,3) ;

   mb->sm_next = smc->os.hwm.mbuf_pool.mb_free ;
   smc->os.hwm.mbuf_pool.mb_free = mb ;




  }
 }
 else
  SMT_PANIC(smc,HWM_E0003,HWM_E0003_MSG) ;
}
