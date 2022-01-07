
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ses_device {unsigned char* page1; unsigned char* page2; int page2_len; } ;
struct scsi_device {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct enclosure_device {struct ses_device* scratch; TYPE_1__ edev; } ;
struct enclosure_component {int number; } ;


 unsigned char ENCLOSURE_COMPONENT_ARRAY_DEVICE ;
 unsigned char ENCLOSURE_COMPONENT_DEVICE ;
 int ses_recv_diag (struct scsi_device*,int,unsigned char*,int ) ;
 struct scsi_device* to_scsi_device (int ) ;

__attribute__((used)) static unsigned char *ses_get_page2_descriptor(struct enclosure_device *edev,
          struct enclosure_component *ecomp)
{
 int i, j, count = 0, descriptor = ecomp->number;
 struct scsi_device *sdev = to_scsi_device(edev->edev.parent);
 struct ses_device *ses_dev = edev->scratch;
 unsigned char *type_ptr = ses_dev->page1 + 12 + ses_dev->page1[11];
 unsigned char *desc_ptr = ses_dev->page2 + 8;

 ses_recv_diag(sdev, 2, ses_dev->page2, ses_dev->page2_len);

 for (i = 0; i < ses_dev->page1[10]; i++, type_ptr += 4) {
  for (j = 0; j < type_ptr[1]; j++) {
   desc_ptr += 4;
   if (type_ptr[0] != ENCLOSURE_COMPONENT_DEVICE &&
       type_ptr[0] != ENCLOSURE_COMPONENT_ARRAY_DEVICE)
    continue;
   if (count++ == descriptor)
    return desc_ptr;
  }
 }
 return ((void*)0);
}
