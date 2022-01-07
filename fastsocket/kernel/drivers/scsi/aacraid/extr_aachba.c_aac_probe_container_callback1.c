
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int * device; } ;



__attribute__((used)) static int aac_probe_container_callback1(struct scsi_cmnd * scsicmd)
{
 scsicmd->device = ((void*)0);
 return 0;
}
