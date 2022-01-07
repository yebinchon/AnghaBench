
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahc_tmode_tstate {struct ahc_initiator_tinfo* transinfo; } ;
struct ahc_softc {struct ahc_tmode_tstate** enabled_targets; } ;
struct ahc_initiator_tinfo {int dummy; } ;



struct ahc_initiator_tinfo *
ahc_fetch_transinfo(struct ahc_softc *ahc, char channel, u_int our_id,
      u_int remote_id, struct ahc_tmode_tstate **tstate)
{






 if (channel == 'B')
  our_id += 8;
 *tstate = ahc->enabled_targets[our_id];
 return (&(*tstate)->transinfo[remote_id]);
}
