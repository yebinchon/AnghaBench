
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_17__ {char* opcode; } ;
struct TYPE_18__ {TYPE_8__ rsp; } ;
struct TYPE_16__ {int status; } ;
struct viosrp_host_config {TYPE_7__ common; } ;
struct TYPE_14__ {int length; int status; } ;
struct viosrp_adapter_info {TYPE_5__ common; int buffer; } ;
struct TYPE_12__ {int status; } ;
struct TYPE_13__ {TYPE_3__ common; } ;
struct TYPE_10__ {int type; } ;
struct TYPE_11__ {TYPE_1__ common; } ;
struct TYPE_15__ {struct viosrp_host_config host_config; struct viosrp_adapter_info adapter_info; TYPE_4__ error_log; TYPE_2__ empty_iu; } ;
union viosrp_iu {TYPE_9__ srp; TYPE_6__ mad; } ;
struct iu_entry {int dummy; } ;






 int VIOSRP_MAD_FORMAT ;
 int eprintk (char*,char*) ;
 int send_adapter_info (struct iu_entry*,int ,int ) ;
 int send_iu (struct iu_entry*,int,int ) ;
 union viosrp_iu* vio_iu (struct iu_entry*) ;

__attribute__((used)) static int process_mad_iu(struct iu_entry *iue)
{
 union viosrp_iu *iu = vio_iu(iue);
 struct viosrp_adapter_info *info;
 struct viosrp_host_config *conf;

 switch (iu->mad.empty_iu.common.type) {
 case 130:
  eprintk("%s\n", "Unsupported EMPTY MAD IU");
  break;
 case 129:
  eprintk("%s\n", "Unsupported ERROR LOG MAD IU");
  iu->mad.error_log.common.status = 1;
  send_iu(iue, sizeof(iu->mad.error_log), VIOSRP_MAD_FORMAT);
  break;
 case 131:
  info = &iu->mad.adapter_info;
  info->common.status = send_adapter_info(iue, info->buffer,
       info->common.length);
  send_iu(iue, sizeof(*info), VIOSRP_MAD_FORMAT);
  break;
 case 128:
  conf = &iu->mad.host_config;
  conf->common.status = 1;
  send_iu(iue, sizeof(*conf), VIOSRP_MAD_FORMAT);
  break;
 default:
  eprintk("Unknown type %u\n", iu->srp.rsp.opcode);
 }

 return 1;
}
