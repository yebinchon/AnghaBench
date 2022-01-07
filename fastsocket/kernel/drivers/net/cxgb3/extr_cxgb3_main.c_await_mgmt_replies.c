
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* qs; } ;
struct adapter {TYPE_3__ sge; } ;
struct TYPE_4__ {unsigned long offload_pkts; } ;
struct TYPE_5__ {TYPE_1__ rspq; } ;


 int ETIMEDOUT ;
 int msleep (int) ;

__attribute__((used)) static int await_mgmt_replies(struct adapter *adap, unsigned long init_cnt,
         unsigned long n)
{
 int attempts = 10;

 while (adap->sge.qs[0].rspq.offload_pkts < init_cnt + n) {
  if (!--attempts)
   return -ETIMEDOUT;
  msleep(10);
 }
 return 0;
}
