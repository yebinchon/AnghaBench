
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tsk_mgmt_func; } ;
struct TYPE_4__ {TYPE_1__ tsk_mgmt; } ;
union viosrp_iu {TYPE_2__ srp; } ;
typedef scalar_t__ u64 ;
struct iu_entry {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 unsigned char ABORTED_COMMAND ;
 unsigned char NO_SENSE ;

 int eprintk (char*,struct iu_entry*,int) ;
 int send_rsp (struct iu_entry*,int *,unsigned char,unsigned char) ;
 int srp_iu_put (struct iu_entry*) ;
 union viosrp_iu* vio_iu (struct iu_entry*) ;

__attribute__((used)) static int ibmvstgt_tsk_mgmt_response(struct Scsi_Host *shost,
          u64 itn_id, u64 mid, int result)
{
 struct iu_entry *iue = (struct iu_entry *) ((void *) mid);
 union viosrp_iu *iu = vio_iu(iue);
 unsigned char status, asc;

 eprintk("%p %d\n", iue, result);
 status = NO_SENSE;
 asc = 0;

 switch (iu->srp.tsk_mgmt.tsk_mgmt_func) {
 case 128:
  asc = 0x14;
  if (result)
   status = ABORTED_COMMAND;
  break;
 default:
  break;
 }

 send_rsp(iue, ((void*)0), status, asc);
 srp_iu_put(iue);

 return 0;
}
