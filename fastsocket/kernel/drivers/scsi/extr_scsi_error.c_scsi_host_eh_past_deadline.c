
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__ eh_deadline; scalar_t__ last_reset; } ;


 int jiffies ;
 scalar_t__ time_before (int ,scalar_t__) ;

__attribute__((used)) static int scsi_host_eh_past_deadline(struct Scsi_Host *shost)
{
 if (!shost->last_reset || !shost->eh_deadline)
  return 0;

 if (time_before(jiffies,
   shost->last_reset + shost->eh_deadline))
  return 0;

 return 1;
}
