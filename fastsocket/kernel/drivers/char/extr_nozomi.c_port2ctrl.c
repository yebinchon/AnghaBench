
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nozomi {TYPE_1__* pdev; } ;
typedef enum port_type { ____Placeholder_port_type } port_type ;
typedef enum ctrl_port_type { ____Placeholder_ctrl_port_type } ctrl_port_type ;
struct TYPE_2__ {int dev; } ;


 int CTRL_APP1 ;
 int CTRL_APP2 ;
 int CTRL_DIAG ;
 int CTRL_ERROR ;
 int CTRL_MDM ;




 int dev_err (int *,char*) ;

__attribute__((used)) static enum ctrl_port_type port2ctrl(enum port_type port,
     const struct nozomi *dc)
{
 switch (port) {
 case 128:
  return CTRL_MDM;
 case 129:
  return CTRL_DIAG;
 case 131:
  return CTRL_APP1;
 case 130:
  return CTRL_APP2;
 default:
  dev_err(&dc->pdev->dev,
   "ERROR: send flow control " "received for non-existing port\n");

 };
 return CTRL_ERROR;
}
