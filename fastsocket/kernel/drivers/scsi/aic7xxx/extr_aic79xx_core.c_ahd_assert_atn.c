
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int dummy; } ;


 int ATNO ;
 int SCSISIGO ;
 int ahd_outb (struct ahd_softc*,int ,int ) ;

__attribute__((used)) static inline void
ahd_assert_atn(struct ahd_softc *ahd)
{
 ahd_outb(ahd, SCSISIGO, ATNO);
}
