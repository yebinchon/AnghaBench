
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct IsdnCardState {int dummy; } ;
struct BCState {scalar_t__ mode; } ;


 int BSTAT_RDM1 ;
 int BSTAT_RDM2 ;
 struct BCState* sel_bcs_isar (struct IsdnCardState*,int) ;
 int send_frames (struct BCState*) ;

__attribute__((used)) static inline void
check_send(struct IsdnCardState *cs, u_char rdm)
{
 struct BCState *bcs;

 if (rdm & BSTAT_RDM1) {
  if ((bcs = sel_bcs_isar(cs, 1))) {
   if (bcs->mode) {
    send_frames(bcs);
   }
  }
 }
 if (rdm & BSTAT_RDM2) {
  if ((bcs = sel_bcs_isar(cs, 2))) {
   if (bcs->mode) {
    send_frames(bcs);
   }
  }
 }

}
