
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_command {int block_desc_length; int block_length_med; int block_length_lo; int* cmd; int buflen; char* buffer; int data_direction; } ;
struct modesel_head {int block_desc_length; int block_length_med; int block_length_lo; int* cmd; int buflen; char* buffer; int data_direction; } ;
struct cdrom_device_ops {int (* generic_packet ) (struct cdrom_device_info*,struct packet_command*) ;} ;
struct cdrom_device_info {struct cdrom_device_ops* ops; } ;
typedef int mh ;
typedef int cgc ;


 int CGC_DATA_WRITE ;
 int memset (struct packet_command*,int ,int) ;
 int stub1 (struct cdrom_device_info*,struct packet_command*) ;

__attribute__((used)) static int cdrom_switch_blocksize(struct cdrom_device_info *cdi, int size)
{
 struct cdrom_device_ops *cdo = cdi->ops;
 struct packet_command cgc;
 struct modesel_head mh;

 memset(&mh, 0, sizeof(mh));
 mh.block_desc_length = 0x08;
 mh.block_length_med = (size >> 8) & 0xff;
 mh.block_length_lo = size & 0xff;

 memset(&cgc, 0, sizeof(cgc));
 cgc.cmd[0] = 0x15;
 cgc.cmd[1] = 1 << 4;
 cgc.cmd[4] = 12;
 cgc.buflen = sizeof(mh);
 cgc.buffer = (char *) &mh;
 cgc.data_direction = CGC_DATA_WRITE;
 mh.block_desc_length = 0x08;
 mh.block_length_med = (size >> 8) & 0xff;
 mh.block_length_lo = size & 0xff;

 return cdo->generic_packet(cdi, &cgc);
}
