
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct sgentry64 {int dummy; } ;
struct scsi_cmnd {int dummy; } ;
struct fib {TYPE_1__* dev; } ;
struct TYPE_4__ {int count; } ;
struct aac_write64 {TYPE_2__ sg; scalar_t__ flags; scalar_t__ pad; void* block; void* sector_count; void* cid; void* command; } ;
struct aac_fibhdr {int dummy; } ;
typedef int fib_callback ;
struct TYPE_3__ {int max_fib_size; } ;


 int BUG_ON (int) ;
 int ContainerCommand64 ;
 int FsaNormal ;
 int VM_CtHostWrite64 ;
 int aac_build_sg64 (struct scsi_cmnd*,TYPE_2__*) ;
 int aac_fib_init (struct fib*) ;
 int aac_fib_send (int ,struct fib*,int,int ,int ,int,int ,void*) ;
 void* cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 scalar_t__ fib_data (struct fib*) ;
 scalar_t__ io_callback ;
 int le32_to_cpu (int ) ;
 int scmd_id (struct scsi_cmnd*) ;

__attribute__((used)) static int aac_write_block64(struct fib * fib, struct scsi_cmnd * cmd, u64 lba, u32 count, int fua)
{
 u16 fibsize;
 struct aac_write64 *writecmd;
 aac_fib_init(fib);
 writecmd = (struct aac_write64 *) fib_data(fib);
 writecmd->command = cpu_to_le32(VM_CtHostWrite64);
 writecmd->cid = cpu_to_le16(scmd_id(cmd));
 writecmd->sector_count = cpu_to_le16(count);
 writecmd->block = cpu_to_le32((u32)(lba&0xffffffff));
 writecmd->pad = 0;
 writecmd->flags = 0;

 aac_build_sg64(cmd, &writecmd->sg);
 fibsize = sizeof(struct aac_write64) +
  ((le32_to_cpu(writecmd->sg.count) - 1) *
   sizeof (struct sgentry64));
 BUG_ON (fibsize > (fib->dev->max_fib_size -
    sizeof(struct aac_fibhdr)));



 return aac_fib_send(ContainerCommand64,
     fib,
     fibsize,
     FsaNormal,
     0, 1,
     (fib_callback) io_callback,
     (void *) cmd);
}
