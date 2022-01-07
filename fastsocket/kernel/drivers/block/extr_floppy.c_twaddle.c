
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ select_delay; } ;
struct TYPE_5__ {int select_date; } ;
struct TYPE_4__ {int dor; } ;


 TYPE_3__* DP ;
 TYPE_2__* DRS ;
 TYPE_1__* FDCS ;
 int FD_DOR ;
 int UNIT (int ) ;
 int current_drive ;
 int fd_outb (int,int ) ;
 int jiffies ;

__attribute__((used)) static void twaddle(void)
{
 if (DP->select_delay)
  return;
 fd_outb(FDCS->dor & ~(0x10 << UNIT(current_drive)), FD_DOR);
 fd_outb(FDCS->dor, FD_DOR);
 DRS->select_date = jiffies;
}
