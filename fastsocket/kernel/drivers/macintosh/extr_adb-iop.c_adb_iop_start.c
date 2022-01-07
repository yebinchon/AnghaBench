
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct adb_request {int nbytes; int sent; scalar_t__* data; } ;
struct adb_iopmsg {int count; int cmd; int flags; } ;
typedef int amsg ;
typedef int __u8 ;


 int ADB_CHAN ;
 int ADB_IOP ;
 int ADB_IOP_EXPLICIT ;
 int adb_iop_complete ;
 int adb_iop_state ;
 struct adb_request* current_req ;
 int iop_send_message (int ,int ,struct adb_request*,int,int *,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int memcpy (int *,scalar_t__*,int) ;
 int printk (char*,...) ;
 int sending ;

__attribute__((used)) static void adb_iop_start(void)
{
 unsigned long flags;
 struct adb_request *req;
 struct adb_iopmsg amsg;





 req = current_req;
 if (!req) return;

 local_irq_save(flags);
 amsg.flags = ADB_IOP_EXPLICIT;
 amsg.count = req->nbytes - 2;



 memcpy(&amsg.cmd, req->data + 1, req->nbytes - 1);

 req->sent = 1;
 adb_iop_state = sending;
 local_irq_restore(flags);




 iop_send_message(ADB_IOP, ADB_CHAN, req,
    sizeof(amsg), (__u8 *) &amsg, adb_iop_complete);
}
