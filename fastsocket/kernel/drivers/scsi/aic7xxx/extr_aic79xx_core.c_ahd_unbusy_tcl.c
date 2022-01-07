
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int dummy; } ;


 int SCB_LIST_NULL ;
 int ahd_busy_tcl (struct ahd_softc*,int ,int ) ;

__attribute__((used)) static inline void
ahd_unbusy_tcl(struct ahd_softc *ahd, u_int tcl)
{
 ahd_busy_tcl(ahd, tcl, SCB_LIST_NULL);
}
