
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ilo_hwinfo {int dummy; } ;
struct TYPE_4__ {char* recv_fifobar; } ;
struct TYPE_3__ {char* send_fifobar; } ;
struct ccb {TYPE_2__ ccb_u3; TYPE_1__ ccb_u1; } ;


 int SENDQ ;
 int fifo_enqueue (struct ilo_hwinfo*,char*,int) ;
 int mk_entry (int,int) ;

__attribute__((used)) static int ilo_pkt_enqueue(struct ilo_hwinfo *hw, struct ccb *ccb,
      int dir, int id, int len)
{
 char *fifobar;
 int entry;

 if (dir == SENDQ)
  fifobar = ccb->ccb_u1.send_fifobar;
 else
  fifobar = ccb->ccb_u3.recv_fifobar;

 entry = mk_entry(id, len);
 return fifo_enqueue(hw, fifobar, entry);
}
