
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct sgentry {int dummy; } ;
struct scsi_cmnd {int dummy; } ;
struct fib {TYPE_1__* dev; } ;
struct TYPE_4__ {int count; } ;
struct aac_read {TYPE_2__ sg; void* count; void* block; void* cid; void* command; } ;
struct aac_fibhdr {int dummy; } ;
typedef int fib_callback ;
struct TYPE_3__ {int max_fib_size; } ;


 int BUG_ON (int) ;
 int ContainerCommand ;
 int FsaNormal ;
 int VM_CtBlockRead ;
 int aac_build_sg (struct scsi_cmnd*,TYPE_2__*) ;
 int aac_fib_init (struct fib*) ;
 int aac_fib_send (int ,struct fib*,int,int ,int ,int,int ,void*) ;
 void* cpu_to_le32 (int) ;
 scalar_t__ fib_data (struct fib*) ;
 scalar_t__ io_callback ;
 int le32_to_cpu (int ) ;
 int scmd_id (struct scsi_cmnd*) ;

__attribute__((used)) static int aac_read_block(struct fib * fib, struct scsi_cmnd * cmd, u64 lba, u32 count)
{
 u16 fibsize;
 struct aac_read *readcmd;
 aac_fib_init(fib);
 readcmd = (struct aac_read *) fib_data(fib);
 readcmd->command = cpu_to_le32(VM_CtBlockRead);
 readcmd->cid = cpu_to_le32(scmd_id(cmd));
 readcmd->block = cpu_to_le32((u32)(lba&0xffffffff));
 readcmd->count = cpu_to_le32(count * 512);

 aac_build_sg(cmd, &readcmd->sg);
 fibsize = sizeof(struct aac_read) +
   ((le32_to_cpu(readcmd->sg.count) - 1) *
    sizeof (struct sgentry));
 BUG_ON (fibsize > (fib->dev->max_fib_size -
    sizeof(struct aac_fibhdr)));



 return aac_fib_send(ContainerCommand,
     fib,
     fibsize,
     FsaNormal,
     0, 1,
     (fib_callback) io_callback,
     (void *) cmd);
}
