
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int dummy; } ;


 int ETIMEDOUT ;
 int SEEARBACK ;
 int SEEBUSY ;
 int SEESTAT ;
 int ahd_delay (int) ;
 int ahd_inb (struct ahd_softc*,int ) ;

__attribute__((used)) static int
ahd_wait_seeprom(struct ahd_softc *ahd)
{
 int cnt;

 cnt = 5000;
 while ((ahd_inb(ahd, SEESTAT) & (SEEARBACK|SEEBUSY)) != 0 && --cnt)
  ahd_delay(5);

 if (cnt == 0)
  return (ETIMEDOUT);
 return (0);
}
