
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int port_name; int adapter_name; } ;
struct bfa_bsg_ioc_name_s {int status; int name; } ;


 int BFA_STATUS_OK ;
 unsigned int IOCMD_IOC_SET_ADAPTER_NAME ;
 unsigned int IOCMD_IOC_SET_PORT_NAME ;
 int strcpy (int ,int ) ;

int
bfad_iocmd_ioc_set_name(struct bfad_s *bfad, void *cmd, unsigned int v_cmd)
{
 struct bfa_bsg_ioc_name_s *iocmd = (struct bfa_bsg_ioc_name_s *) cmd;

 if (v_cmd == IOCMD_IOC_SET_ADAPTER_NAME)
  strcpy(bfad->adapter_name, iocmd->name);
 else if (v_cmd == IOCMD_IOC_SET_PORT_NAME)
  strcpy(bfad->port_name, iocmd->name);

 iocmd->status = BFA_STATUS_OK;
 return 0;
}
