
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahc_softc {int dummy; } ;
struct TYPE_2__ {char* errmesg; } ;


 int ALL_CHANNELS ;
 int CAM_LUN_WILDCARD ;
 int CAM_NO_HBA ;
 int CAM_TARGET_WILDCARD ;
 int ERROR ;
 int ROLE_UNKNOWN ;
 int SCB_LIST_NULL ;
 int SEQADDR0 ;
 int SEQADDR1 ;
 int ahc_abort_scbs (struct ahc_softc*,int ,int ,int ,int ,int ,int ) ;
 int ahc_dump_card_state (struct ahc_softc*) ;
 TYPE_1__* ahc_hard_errors ;
 int ahc_inb (struct ahc_softc*,int ) ;
 char* ahc_name (struct ahc_softc*) ;
 int ahc_shutdown (struct ahc_softc*) ;
 int num_errors ;
 int printf (char*,char*,char*,int) ;

__attribute__((used)) static void
ahc_handle_brkadrint(struct ahc_softc *ahc)
{




 int i;
 int error;

 error = ahc_inb(ahc, ERROR);
 for (i = 0; error != 1 && i < num_errors; i++)
  error >>= 1;
 printf("%s: brkadrint, %s at seqaddr = 0x%x\n",
        ahc_name(ahc), ahc_hard_errors[i].errmesg,
        ahc_inb(ahc, SEQADDR0) |
        (ahc_inb(ahc, SEQADDR1) << 8));

 ahc_dump_card_state(ahc);


 ahc_abort_scbs(ahc, CAM_TARGET_WILDCARD, ALL_CHANNELS,
         CAM_LUN_WILDCARD, SCB_LIST_NULL, ROLE_UNKNOWN,
         CAM_NO_HBA);


 ahc_shutdown(ahc);
}
