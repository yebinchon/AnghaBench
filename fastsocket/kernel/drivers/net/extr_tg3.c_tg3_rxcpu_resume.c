
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int dummy; } ;


 int RX_CPU_BASE ;
 int tg3_resume_cpu (struct tg3*,int ) ;

__attribute__((used)) static void tg3_rxcpu_resume(struct tg3 *tp)
{
 tg3_resume_cpu(tp, RX_CPU_BASE);
}
