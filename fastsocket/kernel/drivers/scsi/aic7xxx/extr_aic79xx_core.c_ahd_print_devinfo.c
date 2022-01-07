
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int dummy; } ;
struct ahd_devinfo {int target; int lun; } ;


 char* ahd_name (struct ahd_softc*) ;
 int printf (char*,char*,char,int,int) ;

void
ahd_print_devinfo(struct ahd_softc *ahd, struct ahd_devinfo *devinfo)
{
 printf("%s:%c:%d:%d: ", ahd_name(ahd), 'A',
        devinfo->target, devinfo->lun);
}
