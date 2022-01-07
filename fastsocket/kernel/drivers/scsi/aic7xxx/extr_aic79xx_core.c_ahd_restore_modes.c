
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int dummy; } ;
typedef int ahd_mode_state ;
typedef int ahd_mode ;


 int ahd_extract_mode_state (struct ahd_softc*,int ,int *,int *) ;
 int ahd_set_modes (struct ahd_softc*,int ,int ) ;

void
ahd_restore_modes(struct ahd_softc *ahd, ahd_mode_state state)
{
 ahd_mode src;
 ahd_mode dst;

 ahd_extract_mode_state(ahd, state, &src, &dst);
 ahd_set_modes(ahd, src, dst);
}
