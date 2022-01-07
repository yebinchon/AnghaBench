
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 unsigned long EFAULT ;
 scalar_t__ HCI_SUCCESS ;
 int HCI_VIDEO_OUT ;
 int HCI_VIDEO_OUT_CRT ;
 int HCI_VIDEO_OUT_LCD ;
 int HCI_VIDEO_OUT_TV ;
 int METHOD_VIDEO_OUT ;
 int _set_bit (unsigned int*,int ,int) ;
 int hci_read1 (int ,scalar_t__*,scalar_t__*) ;
 int sscanf (char const*,char*,int*) ;
 int write_acpi_int (int ,unsigned int) ;

__attribute__((used)) static unsigned long write_video(const char *buffer, unsigned long count)
{
 int value;
 int remain = count;
 int lcd_out = -1;
 int crt_out = -1;
 int tv_out = -1;
 u32 hci_result;
 u32 video_out;





 while (remain) {
  if (sscanf(buffer, " lcd_out : %i", &value) == 1)
   lcd_out = value & 1;
  else if (sscanf(buffer, " crt_out : %i", &value) == 1)
   crt_out = value & 1;
  else if (sscanf(buffer, " tv_out : %i", &value) == 1)
   tv_out = value & 1;

  do {
   ++buffer;
   --remain;
  }
  while (remain && *(buffer - 1) != ';');
 }

 hci_read1(HCI_VIDEO_OUT, &video_out, &hci_result);
 if (hci_result == HCI_SUCCESS) {
  unsigned int new_video_out = video_out;
  if (lcd_out != -1)
   _set_bit(&new_video_out, HCI_VIDEO_OUT_LCD, lcd_out);
  if (crt_out != -1)
   _set_bit(&new_video_out, HCI_VIDEO_OUT_CRT, crt_out);
  if (tv_out != -1)
   _set_bit(&new_video_out, HCI_VIDEO_OUT_TV, tv_out);


  if (new_video_out != video_out)
   write_acpi_int(METHOD_VIDEO_OUT, new_video_out);
 } else {
  return -EFAULT;
 }

 return count;
}
