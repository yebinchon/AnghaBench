
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u_int ;
struct info_str {char* buffer; int length; scalar_t__ offset; scalar_t__ pos; } ;
struct TYPE_2__ {int numscbs; } ;
struct ahd_softc {int features; int our_id; int * seep_config; TYPE_1__ scb_data; int description; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef scalar_t__ off_t ;


 int AHD_NSEG ;
 int AHD_WIDE ;
 int AIC79XX_DRIVER_VERSION ;
 int TRUE ;
 int ahd_controller_info (struct ahd_softc*,char*) ;
 int ahd_dump_target_state (struct ahd_softc*,struct info_str*,int ,char,int) ;
 int ahd_proc_write_seeprom (struct ahd_softc*,char*,int) ;
 int copy_info (struct info_str*,char*,...) ;

int
ahd_linux_proc_info(struct Scsi_Host *shost, char *buffer, char **start,
      off_t offset, int length, int inout)
{
 struct ahd_softc *ahd = *(struct ahd_softc **)shost->hostdata;
 struct info_str info;
 char ahd_info[256];
 u_int max_targ;
 u_int i;
 int retval;


 if (inout == TRUE) {
  retval = ahd_proc_write_seeprom(ahd, buffer, length);
  goto done;
 }

 if (start)
  *start = buffer;

 info.buffer = buffer;
 info.length = length;
 info.offset = offset;
 info.pos = 0;

 copy_info(&info, "Adaptec AIC79xx driver version: %s\n",
    AIC79XX_DRIVER_VERSION);
 copy_info(&info, "%s\n", ahd->description);
 ahd_controller_info(ahd, ahd_info);
 copy_info(&info, "%s\n", ahd_info);
 copy_info(&info, "Allocated SCBs: %d, SG List Length: %d\n\n",
    ahd->scb_data.numscbs, AHD_NSEG);

 max_targ = 16;

 if (ahd->seep_config == ((void*)0))
  copy_info(&info, "No Serial EEPROM\n");
 else {
  copy_info(&info, "Serial EEPROM:\n");
  for (i = 0; i < sizeof(*ahd->seep_config)/2; i++) {
   if (((i % 8) == 0) && (i != 0)) {
    copy_info(&info, "\n");
   }
   copy_info(&info, "0x%.4x ",
      ((uint16_t*)ahd->seep_config)[i]);
  }
  copy_info(&info, "\n");
 }
 copy_info(&info, "\n");

 if ((ahd->features & AHD_WIDE) == 0)
  max_targ = 8;

 for (i = 0; i < max_targ; i++) {

  ahd_dump_target_state(ahd, &info, ahd->our_id, 'A',
                       i);
 }
 retval = info.pos > info.offset ? info.pos - info.offset : 0;
done:
 return (retval);
}
