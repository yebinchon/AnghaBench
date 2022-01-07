
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int msg_type; scalar_t__ msgin_index; scalar_t__ msgout_len; } ;


 int ATNI ;
 int CLRATNO ;
 int CLRSINT1 ;
 int MSG_NOOP ;
 int MSG_OUT ;
 int MSG_TYPE_NONE ;
 int SCSISIGI ;
 int SEQ_FLAGS2 ;
 int TARGET_MSG_PENDING ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;

__attribute__((used)) static void
ahc_clear_msg_state(struct ahc_softc *ahc)
{
 ahc->msgout_len = 0;
 ahc->msgin_index = 0;
 ahc->msg_type = MSG_TYPE_NONE;
 if ((ahc_inb(ahc, SCSISIGI) & ATNI) != 0) {




  ahc_outb(ahc, CLRSINT1, CLRATNO);
 }
 ahc_outb(ahc, MSG_OUT, MSG_NOOP);
 ahc_outb(ahc, SEQ_FLAGS2,
   ahc_inb(ahc, SEQ_FLAGS2) & ~TARGET_MSG_PENDING);
}
