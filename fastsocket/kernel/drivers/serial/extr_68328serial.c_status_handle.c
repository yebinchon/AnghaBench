
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* tty; } ;
struct m68k_serial {int* curregs; int* pendregs; scalar_t__ break_abort; int m68k_channel; TYPE_3__ port; } ;
struct TYPE_5__ {TYPE_1__* termios; } ;
struct TYPE_4__ {int c_cflag; } ;


 int AUTO_ENAB ;
 int CRTSCTS ;
 unsigned short DCD ;
 unsigned short URX_BREAK ;
 int batten_down_hatches () ;
 int write_zsreg (int ,int,int) ;

__attribute__((used)) static void status_handle(struct m68k_serial *info, unsigned short status)
{
 if((status & URX_BREAK) && info->break_abort)
  batten_down_hatches();
 return;
}
