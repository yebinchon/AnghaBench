
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iop_msg {int status; } ;


 int IOP_MSGSTATUS_UNUSED ;

__attribute__((used)) static void iop_free_msg(struct iop_msg *msg)
{
 msg->status = IOP_MSGSTATUS_UNUSED;
}
