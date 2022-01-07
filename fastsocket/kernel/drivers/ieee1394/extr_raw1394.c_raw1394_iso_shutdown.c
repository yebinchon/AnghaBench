
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_info {int iso_state; int * iso_handle; } ;


 int RAW1394_ISO_INACTIVE ;
 int hpsb_iso_shutdown (int *) ;

__attribute__((used)) static void raw1394_iso_shutdown(struct file_info *fi)
{
 if (fi->iso_handle)
  hpsb_iso_shutdown(fi->iso_handle);

 fi->iso_handle = ((void*)0);
 fi->iso_state = RAW1394_ISO_INACTIVE;
}
