
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_7__ {scalar_t__ voltags; TYPE_1__* device; } ;
typedef TYPE_2__ scsi_changer ;
typedef int cmd ;
struct TYPE_6__ {int lun; } ;


 int DMA_FROM_DEVICE ;
 int EIO ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int READ_ELEMENT_STATUS ;
 int ch_do_scsi (TYPE_2__*,int*,int*,int,int ) ;
 int ch_elem_to_typecode (TYPE_2__*,int) ;
 int dprintk (char*,int,...) ;
 int kfree (int*) ;
 int* kmalloc (int,int) ;
 int memcpy (char*,int*,int) ;
 int memset (int*,int ,int) ;
 int vprintk (char*) ;

__attribute__((used)) static int
ch_read_element_status(scsi_changer *ch, u_int elem, char *data)
{
 u_char cmd[12];
 u_char *buffer;
 int result;

 buffer = kmalloc(512, GFP_KERNEL | GFP_DMA);
 if(!buffer)
  return -ENOMEM;

 retry:
 memset(cmd,0,sizeof(cmd));
 cmd[0] = READ_ELEMENT_STATUS;
 cmd[1] = (ch->device->lun << 5) |
  (ch->voltags ? 0x10 : 0) |
  ch_elem_to_typecode(ch,elem);
 cmd[2] = (elem >> 8) & 0xff;
 cmd[3] = elem & 0xff;
 cmd[5] = 1;
 cmd[9] = 255;
 if (0 == (result = ch_do_scsi(ch, cmd, buffer, 256, DMA_FROM_DEVICE))) {
  if (((buffer[16] << 8) | buffer[17]) != elem) {
   dprintk("asked for element 0x%02x, got 0x%02x\n",
    elem,(buffer[16] << 8) | buffer[17]);
   kfree(buffer);
   return -EIO;
  }
  memcpy(data,buffer+16,16);
 } else {
  if (ch->voltags) {
   ch->voltags = 0;
   vprintk("device has no volume tag support\n");
   goto retry;
  }
  dprintk("READ ELEMENT STATUS for element 0x%x failed\n",elem);
 }
 kfree(buffer);
 return result;
}
