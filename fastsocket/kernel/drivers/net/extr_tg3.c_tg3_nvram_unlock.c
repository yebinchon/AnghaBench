
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {scalar_t__ nvram_lock_cnt; } ;


 int NVRAM ;
 int NVRAM_SWARB ;
 int SWARB_REQ_CLR1 ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tw32_f (int ,int ) ;

__attribute__((used)) static void tg3_nvram_unlock(struct tg3 *tp)
{
 if (tg3_flag(tp, NVRAM)) {
  if (tp->nvram_lock_cnt > 0)
   tp->nvram_lock_cnt--;
  if (tp->nvram_lock_cnt == 0)
   tw32_f(NVRAM_SWARB, SWARB_REQ_CLR1);
 }
}
