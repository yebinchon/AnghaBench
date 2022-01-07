
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct nvme_dev {int dummy; } ;
struct TYPE_2__ {int qid; int opcode; } ;
struct nvme_command {TYPE_1__ delete_queue; } ;
typedef int c ;


 int EIO ;
 int cpu_to_le16 (int ) ;
 int memset (struct nvme_command*,int ,int) ;
 int nvme_submit_admin_cmd (struct nvme_dev*,struct nvme_command*,int *) ;

__attribute__((used)) static int adapter_delete_queue(struct nvme_dev *dev, u8 opcode, u16 id)
{
 int status;
 struct nvme_command c;

 memset(&c, 0, sizeof(c));
 c.delete_queue.opcode = opcode;
 c.delete_queue.qid = cpu_to_le16(id);

 status = nvme_submit_admin_cmd(dev, &c, ((void*)0));
 if (status)
  return -EIO;
 return 0;
}
