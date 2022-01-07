
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct sgentryraw {int dummy; } ;
struct sge_ieee1212 {int dummy; } ;
struct scsi_cmnd {int dummy; } ;
struct fib {struct aac_dev* dev; } ;
struct aac_raw_io2 {int sgeCnt; void* flags; void* cid; void* byteCount; void* blockHigh; void* blockLow; } ;
struct TYPE_4__ {int count; } ;
struct aac_raw_io {TYPE_2__ sg; scalar_t__ bpComplete; scalar_t__ bpTotal; void* flags; void* cid; void* count; void** block; } ;
struct aac_fibhdr {int dummy; } ;
struct aac_dev {scalar_t__ comm_interface; int max_fib_size; TYPE_1__* scsi_host_ptr; int sync_mode; } ;
typedef int fib_callback ;
struct TYPE_3__ {int sg_tablesize; } ;


 scalar_t__ AAC_COMM_MESSAGE_TYPE2 ;
 int BUG_ON (int) ;
 int ContainerRawIo ;
 int ContainerRawIo2 ;
 int FsaNormal ;
 int RIO2_IO_TYPE_READ ;
 int RIO_TYPE_READ ;
 int aac_build_sgraw (struct scsi_cmnd*,TYPE_2__*) ;
 int aac_build_sgraw2 (struct scsi_cmnd*,struct aac_raw_io2*,int ) ;
 int aac_fib_init (struct fib*) ;
 int aac_fib_send (int,struct fib*,int,int ,int ,int,int ,void*) ;
 void* cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int) ;
 scalar_t__ fib_data (struct fib*) ;
 scalar_t__ io_callback ;
 int le32_to_cpu (int ) ;
 int memset (struct aac_raw_io2*,int ,int) ;
 int scmd_id (struct scsi_cmnd*) ;

__attribute__((used)) static int aac_read_raw_io(struct fib * fib, struct scsi_cmnd * cmd, u64 lba, u32 count)
{
 struct aac_dev *dev = fib->dev;
 u16 fibsize, command;

 aac_fib_init(fib);
 if (dev->comm_interface == AAC_COMM_MESSAGE_TYPE2 && !dev->sync_mode) {
  struct aac_raw_io2 *readcmd2;
  readcmd2 = (struct aac_raw_io2 *) fib_data(fib);
  memset(readcmd2, 0, sizeof(struct aac_raw_io2));
  readcmd2->blockLow = cpu_to_le32((u32)(lba&0xffffffff));
  readcmd2->blockHigh = cpu_to_le32((u32)((lba&0xffffffff00000000LL)>>32));
  readcmd2->byteCount = cpu_to_le32(count<<9);
  readcmd2->cid = cpu_to_le16(scmd_id(cmd));
  readcmd2->flags = cpu_to_le16(RIO2_IO_TYPE_READ);
  aac_build_sgraw2(cmd, readcmd2, dev->scsi_host_ptr->sg_tablesize);
  command = ContainerRawIo2;
  fibsize = sizeof(struct aac_raw_io2) +
   ((le32_to_cpu(readcmd2->sgeCnt)-1) * sizeof(struct sge_ieee1212));
 } else {
  struct aac_raw_io *readcmd;
  readcmd = (struct aac_raw_io *) fib_data(fib);
  readcmd->block[0] = cpu_to_le32((u32)(lba&0xffffffff));
  readcmd->block[1] = cpu_to_le32((u32)((lba&0xffffffff00000000LL)>>32));
  readcmd->count = cpu_to_le32(count<<9);
  readcmd->cid = cpu_to_le16(scmd_id(cmd));
  readcmd->flags = cpu_to_le16(RIO_TYPE_READ);
  readcmd->bpTotal = 0;
  readcmd->bpComplete = 0;
  aac_build_sgraw(cmd, &readcmd->sg);
  command = ContainerRawIo;
  fibsize = sizeof(struct aac_raw_io) +
   ((le32_to_cpu(readcmd->sg.count)-1) * sizeof(struct sgentryraw));
 }

 BUG_ON(fibsize > (fib->dev->max_fib_size - sizeof(struct aac_fibhdr)));



 return aac_fib_send(command,
     fib,
     fibsize,
     FsaNormal,
     0, 1,
     (fib_callback) io_callback,
     (void *) cmd);
}
