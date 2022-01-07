
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int msg_type; scalar_t__ msgin_index; scalar_t__ msgout_len; int msg_flags; scalar_t__ send_msg_perror; } ;
typedef int ahd_mode_state ;


 int AHD_MODE_SCSI ;
 int ATNO ;
 int CLRATNO ;
 int CLRSINT1 ;
 int MSG_FLAG_NONE ;
 int MSG_NOOP ;
 int MSG_OUT ;
 int MSG_TYPE_NONE ;
 int SCSISIGO ;
 int SEQ_FLAGS2 ;
 int TARGET_MSG_PENDING ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_outb (struct ahd_softc*,int ,int) ;
 int ahd_restore_modes (struct ahd_softc*,int ) ;
 int ahd_save_modes (struct ahd_softc*) ;
 int ahd_set_modes (struct ahd_softc*,int ,int ) ;

__attribute__((used)) static void
ahd_clear_msg_state(struct ahd_softc *ahd)
{
 ahd_mode_state saved_modes;

 saved_modes = ahd_save_modes(ahd);
 ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
 ahd->send_msg_perror = 0;
 ahd->msg_flags = MSG_FLAG_NONE;
 ahd->msgout_len = 0;
 ahd->msgin_index = 0;
 ahd->msg_type = MSG_TYPE_NONE;
 if ((ahd_inb(ahd, SCSISIGO) & ATNO) != 0) {




  ahd_outb(ahd, CLRSINT1, CLRATNO);
 }
 ahd_outb(ahd, MSG_OUT, MSG_NOOP);
 ahd_outb(ahd, SEQ_FLAGS2,
   ahd_inb(ahd, SEQ_FLAGS2) & ~TARGET_MSG_PENDING);
 ahd_restore_modes(ahd, saved_modes);
}
