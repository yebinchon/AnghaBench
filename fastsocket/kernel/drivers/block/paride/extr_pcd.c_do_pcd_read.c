
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pi; } ;


 int next_request (int ) ;
 int pcd_busy ;
 int pcd_count ;
 TYPE_1__* pcd_current ;
 scalar_t__ pcd_retries ;
 int pcd_start ;
 int pcd_transfer () ;
 int pi_do_claimed (int ,int ) ;

__attribute__((used)) static void do_pcd_read(void)
{
 pcd_busy = 1;
 pcd_retries = 0;
 pcd_transfer();
 if (!pcd_count) {
  next_request(0);
  return;
 }

 pi_do_claimed(pcd_current->pi, pcd_start);
}
