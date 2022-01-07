
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_3__ {int endidx; int* seq; } ;
typedef TYPE_1__ hp_sdc_transaction ;


 int HP_SDC_ACT_DATAOUT ;
 int HP_SDC_ACT_PRECMD ;
 int HP_SDC_CMD_SET_FHS ;
 scalar_t__ hp_sdc_enqueue_transaction (TYPE_1__*) ;

__attribute__((used)) static int hp_sdc_rtc_set_fhs (struct timeval *setto)
{
 uint32_t tenms;
 hp_sdc_transaction t;
 uint8_t tseq[5] = {
  HP_SDC_ACT_PRECMD | HP_SDC_ACT_DATAOUT,
  HP_SDC_CMD_SET_FHS, 2, 0, 0
 };

 t.endidx = 4;

 if (0xffff < setto->tv_sec) return -1;
 tenms = setto->tv_sec * 100;
 if (0xffff < setto->tv_usec / 10000) return -1;
 tenms += setto->tv_usec / 10000;
 if (tenms > 0xffff) return -1;

 tseq[3] = (uint8_t)(tenms & 0xff);
 tseq[4] = (uint8_t)((tenms >> 8) & 0xff);

 t.seq = tseq;

 if (hp_sdc_enqueue_transaction(&t)) return -1;
 return 0;
}
