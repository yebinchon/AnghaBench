
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_dev {int * scsi_device; } ;



void osd_dev_fini(struct osd_dev *osdd)
{


 osdd->scsi_device = ((void*)0);
}
