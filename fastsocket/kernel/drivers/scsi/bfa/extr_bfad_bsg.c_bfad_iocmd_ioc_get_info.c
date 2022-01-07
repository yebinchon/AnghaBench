
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct bfad_im_port_s* im_port; } ;
struct bfad_s {int pci_name; int port_name; int adapter_name; int bfad_lock; TYPE_1__ pport; int inst_no; int bfa; } ;
struct bfad_im_port_s {TYPE_2__* shost; } ;
struct bfa_port_attr_s {int factorypwwn; int factorynwwn; int pwwn; int nwwn; } ;
struct bfa_bsg_ioc_info_s {char* name; char* port_name; char* hwpath; char* adapter_hwpath; int status; int host; int bfad_num; int factorypwwn; int factorynwwn; int serialnum; int factory_mac; int mac; int ioc_type; int pwwn; int nwwn; } ;
struct TYPE_4__ {int host_no; } ;


 int BFA_STATUS_OK ;
 int BFA_STRING_32 ;
 int bfa_fcport_get_attr (int *,struct bfa_port_attr_s*) ;
 int bfa_get_adapter_serial_num (int *,int ) ;
 int bfa_get_mac (int *) ;
 int bfa_get_mfg_mac (int *) ;
 int bfa_get_type (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strcpy (char*,int ) ;

__attribute__((used)) static int
bfad_iocmd_ioc_get_info(struct bfad_s *bfad, void *cmd)
{
 int i;
 struct bfa_bsg_ioc_info_s *iocmd = (struct bfa_bsg_ioc_info_s *)cmd;
 struct bfad_im_port_s *im_port;
 struct bfa_port_attr_s pattr;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 bfa_fcport_get_attr(&bfad->bfa, &pattr);
 iocmd->nwwn = pattr.nwwn;
 iocmd->pwwn = pattr.pwwn;
 iocmd->ioc_type = bfa_get_type(&bfad->bfa);
 iocmd->mac = bfa_get_mac(&bfad->bfa);
 iocmd->factory_mac = bfa_get_mfg_mac(&bfad->bfa);
 bfa_get_adapter_serial_num(&bfad->bfa, iocmd->serialnum);
 iocmd->factorynwwn = pattr.factorynwwn;
 iocmd->factorypwwn = pattr.factorypwwn;
 iocmd->bfad_num = bfad->inst_no;
 im_port = bfad->pport.im_port;
 iocmd->host = im_port->shost->host_no;
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 strcpy(iocmd->name, bfad->adapter_name);
 strcpy(iocmd->port_name, bfad->port_name);
 strcpy(iocmd->hwpath, bfad->pci_name);


 strcpy(iocmd->adapter_hwpath, bfad->pci_name);
 for (i = 0; iocmd->adapter_hwpath[i] != ':' && i < BFA_STRING_32; i++)
  ;
 for (; iocmd->adapter_hwpath[++i] != ':' && i < BFA_STRING_32; )
  ;
 iocmd->adapter_hwpath[i] = '\0';
 iocmd->status = BFA_STATUS_OK;
 return 0;
}
