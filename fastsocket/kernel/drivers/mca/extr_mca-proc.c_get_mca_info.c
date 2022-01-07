
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_device {int dummy; } ;
typedef int off_t ;


 int MCA_INTEGSCSI ;
 int MCA_INTEGVIDEO ;
 int MCA_MAX_SLOT_NR ;
 int MCA_MOTHERBOARD ;
 scalar_t__ MCA_bus ;
 int get_mca_info_helper (struct mca_device*,char*,int) ;
 struct mca_device* mca_find_device_by_slot (int) ;
 scalar_t__ sprintf (char*,char*,...) ;

__attribute__((used)) static int get_mca_info(char *page, char **start, off_t off,
   int count, int *eof, void *data)
{
 int i, len = 0;

 if(MCA_bus) {
  struct mca_device *mca_dev;


  for(i=0; i<MCA_MAX_SLOT_NR; i++) {
   mca_dev = mca_find_device_by_slot(i);

   len += sprintf(page+len, "Slot %d: ", i+1);
   len = get_mca_info_helper(mca_dev, page, len);
  }



  mca_dev = mca_find_device_by_slot(MCA_INTEGVIDEO);
  len += sprintf(page+len, "Video : ");
  len = get_mca_info_helper(mca_dev, page, len);



  mca_dev = mca_find_device_by_slot(MCA_INTEGSCSI);
  len += sprintf(page+len, "SCSI  : ");
  len = get_mca_info_helper(mca_dev, page, len);



  mca_dev = mca_find_device_by_slot(MCA_MOTHERBOARD);
  len += sprintf(page+len, "Planar: ");
  len = get_mca_info_helper(mca_dev, page, len);
 } else {



 }

 if (len <= off+count) *eof = 1;
 *start = page + off;
 len -= off;
 if (len>count) len = count;
 if (len<0) len = 0;
 return len;
}
