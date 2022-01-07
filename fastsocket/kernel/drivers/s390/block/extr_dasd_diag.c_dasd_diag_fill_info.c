
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_information2_t {unsigned int label_block; int FBA_layout; int characteristics_size; scalar_t__ confdata_size; int characteristics; int format; } ;
struct dasd_diag_private {int rdc_data; scalar_t__ pt_block; } ;
struct dasd_diag_characteristics {int dummy; } ;
struct dasd_device {scalar_t__ private; } ;


 int DASD_FORMAT_LDL ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static int
dasd_diag_fill_info(struct dasd_device * device,
      struct dasd_information2_t * info)
{
 struct dasd_diag_private *private;

 private = (struct dasd_diag_private *) device->private;
 info->label_block = (unsigned int) private->pt_block;
 info->FBA_layout = 1;
 info->format = DASD_FORMAT_LDL;
 info->characteristics_size = sizeof (struct dasd_diag_characteristics);
 memcpy(info->characteristics,
        &((struct dasd_diag_private *) device->private)->rdc_data,
        sizeof (struct dasd_diag_characteristics));
 info->confdata_size = 0;
 return 0;
}
