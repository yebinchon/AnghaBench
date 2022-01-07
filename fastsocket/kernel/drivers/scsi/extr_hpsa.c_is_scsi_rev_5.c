
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int* hba_inquiry_data; } ;



__attribute__((used)) static inline int is_scsi_rev_5(struct ctlr_info *h)
{
 if (!h->hba_inquiry_data)
  return 0;
 if ((h->hba_inquiry_data[2] & 0x07) == 5)
  return 1;
 return 0;
}
