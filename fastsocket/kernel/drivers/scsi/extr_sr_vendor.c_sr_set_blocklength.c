
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct packet_command {int* cmd; int block_desc_length; int density; int block_length_med; int block_length_lo; unsigned char* buffer; int buflen; int timeout; int data_direction; } ;
struct ccs_modesel_head {int* cmd; int block_desc_length; int density; int block_length_med; int block_length_lo; unsigned char* buffer; int buflen; int timeout; int data_direction; } ;
struct TYPE_7__ {int name; } ;
struct TYPE_8__ {scalar_t__ vendor; TYPE_2__ cdi; TYPE_1__* device; } ;
struct TYPE_6__ {int sector_size; } ;
typedef TYPE_3__ Scsi_CD ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int MODE_SELECT ;
 int VENDOR_TIMEOUT ;
 scalar_t__ VENDOR_TOSHIBA ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int) ;
 int memset (struct packet_command*,int ,int) ;
 int printk (char*,int ,int,...) ;
 int sr_do_ioctl (TYPE_3__*,struct packet_command*) ;

int sr_set_blocklength(Scsi_CD *cd, int blocklength)
{
 unsigned char *buffer;
 struct packet_command cgc;
 struct ccs_modesel_head *modesel;
 int rc, density = 0;






 buffer = kmalloc(512, GFP_KERNEL | GFP_DMA);
 if (!buffer)
  return -ENOMEM;




 memset(&cgc, 0, sizeof(struct packet_command));
 cgc.cmd[0] = MODE_SELECT;
 cgc.cmd[1] = (1 << 4);
 cgc.cmd[4] = 12;
 modesel = (struct ccs_modesel_head *) buffer;
 memset(modesel, 0, sizeof(*modesel));
 modesel->block_desc_length = 0x08;
 modesel->density = density;
 modesel->block_length_med = (blocklength >> 8) & 0xff;
 modesel->block_length_lo = blocklength & 0xff;
 cgc.buffer = buffer;
 cgc.buflen = sizeof(*modesel);
 cgc.data_direction = DMA_TO_DEVICE;
 cgc.timeout = VENDOR_TIMEOUT;
 if (0 == (rc = sr_do_ioctl(cd, &cgc))) {
  cd->device->sector_size = blocklength;
 }





 kfree(buffer);
 return rc;
}
