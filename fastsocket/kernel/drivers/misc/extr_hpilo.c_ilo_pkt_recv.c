
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ilo_hwinfo {int dummy; } ;
struct TYPE_2__ {char* recv_fifobar; } ;
struct ccb {TYPE_1__ ccb_u3; } ;


 int fifo_check_recv (struct ilo_hwinfo*,char*) ;

__attribute__((used)) static int ilo_pkt_recv(struct ilo_hwinfo *hw, struct ccb *ccb)
{
 char *fifobar = ccb->ccb_u3.recv_fifobar;

 return fifo_check_recv(hw, fifobar);
}
