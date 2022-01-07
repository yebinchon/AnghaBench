
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opcode; } ;
struct TYPE_4__ {TYPE_1__ rsp; } ;
union viosrp_iu {TYPE_2__ srp; } ;
typedef int u8 ;
struct iu_entry {int dummy; } ;
 int eprintk (char*,int) ;
 int process_login (struct iu_entry*) ;
 int process_tsk_mgmt (struct iu_entry*) ;
 int queue_cmd (struct iu_entry*) ;
 union viosrp_iu* vio_iu (struct iu_entry*) ;

__attribute__((used)) static int process_srp_iu(struct iu_entry *iue)
{
 union viosrp_iu *iu = vio_iu(iue);
 int done = 1;
 u8 opcode = iu->srp.rsp.opcode;

 switch (opcode) {
 case 132:
  process_login(iue);
  break;
 case 129:
  done = process_tsk_mgmt(iue);
  break;
 case 136:
  queue_cmd(iue);
  done = 0;
  break;
 case 131:
 case 133:
 case 128:
 case 130:
 case 135:
 case 134:
 case 138:
 case 137:
  eprintk("Unsupported type %u\n", opcode);
  break;
 default:
  eprintk("Unknown type %u\n", opcode);
 }

 return done;
}
