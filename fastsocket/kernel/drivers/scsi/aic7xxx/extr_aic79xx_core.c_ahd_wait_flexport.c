
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int dummy; } ;


 int AHD_ASSERT_MODES (struct ahd_softc*,int ,int ) ;
 int AHD_MODE_SCSI_MSK ;
 int BRDCTL ;
 int ETIMEDOUT ;
 int FLXARBACK ;
 int ahd_delay (int) ;
 int ahd_inb (struct ahd_softc*,int ) ;

__attribute__((used)) static int
ahd_wait_flexport(struct ahd_softc *ahd)
{
 int cnt;

 AHD_ASSERT_MODES(ahd, AHD_MODE_SCSI_MSK, AHD_MODE_SCSI_MSK);
 cnt = 1000000 * 2 / 5;
 while ((ahd_inb(ahd, BRDCTL) & FLXARBACK) == 0 && --cnt)
  ahd_delay(5);

 if (cnt == 0)
  return (ETIMEDOUT);
 return (0);
}
