
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct scsi_target {int dummy; } ;
struct scsi_device {int dummy; } ;
struct info_str {int dummy; } ;
struct ahd_tmode_tstate {int dummy; } ;
struct ahd_softc {TYPE_1__* platform_data; } ;
struct ahd_initiator_tinfo {int curr; int goal; int user; } ;
struct TYPE_2__ {struct scsi_target** starget; } ;


 int AHD_NUM_LUNS ;
 int ahd_dump_device_state (struct info_str*,struct scsi_device*) ;
 struct ahd_initiator_tinfo* ahd_fetch_transinfo (struct ahd_softc*,char,size_t,size_t,struct ahd_tmode_tstate**) ;
 int ahd_format_transinfo (struct info_str*,int *) ;
 int copy_info (struct info_str*,char*,...) ;
 struct scsi_device* scsi_device_lookup_by_target (struct scsi_target*,int) ;

__attribute__((used)) static void
ahd_dump_target_state(struct ahd_softc *ahd, struct info_str *info,
        u_int our_id, char channel, u_int target_id)
{
 struct scsi_target *starget;
 struct ahd_initiator_tinfo *tinfo;
 struct ahd_tmode_tstate *tstate;
 int lun;

 tinfo = ahd_fetch_transinfo(ahd, channel, our_id,
        target_id, &tstate);
 copy_info(info, "Target %d Negotiation Settings\n", target_id);
 copy_info(info, "\tUser: ");
 ahd_format_transinfo(info, &tinfo->user);
 starget = ahd->platform_data->starget[target_id];
 if (starget == ((void*)0))
  return;

 copy_info(info, "\tGoal: ");
 ahd_format_transinfo(info, &tinfo->goal);
 copy_info(info, "\tCurr: ");
 ahd_format_transinfo(info, &tinfo->curr);

 for (lun = 0; lun < AHD_NUM_LUNS; lun++) {
  struct scsi_device *dev;

  dev = scsi_device_lookup_by_target(starget, lun);

  if (dev == ((void*)0))
   continue;

  ahd_dump_device_state(info, dev);
 }
}
