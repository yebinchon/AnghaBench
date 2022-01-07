
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
struct TYPE_10__ {int sm_off; int sm_use_count; struct TYPE_10__* sm_next; } ;
typedef TYPE_4__ SMbuf ;


 int DB_GEN (char*,void*,int ,int) ;
 TYPE_4__* mb_free ;

SMbuf *smt_get_mbuf(struct s_smc *smc)
{
 register SMbuf *mb ;


 mb = smc->os.hwm.mbuf_pool.mb_free ;



 if (mb) {

  smc->os.hwm.mbuf_pool.mb_free = mb->sm_next ;



  mb->sm_off = 8 ;
  mb->sm_use_count = 1 ;
 }
 DB_GEN("get SMbuf: mb = %x",(void *)mb,0,3) ;
 return (mb) ;
}
