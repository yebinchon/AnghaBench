
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct hwicap_drvdata {TYPE_1__* config; TYPE_2__* config_regs; } ;
struct TYPE_4__ {int CMD; } ;
struct TYPE_3__ {int (* set_configuration ) (struct hwicap_drvdata*,int*,int) ;} ;


 int XHI_CMD_DESYNCH ;
 int XHI_NOOP_PACKET ;
 int hwicap_type_1_write (int ) ;
 int stub1 (struct hwicap_drvdata*,int*,int) ;

__attribute__((used)) static int hwicap_command_desync(struct hwicap_drvdata *drvdata)
{
 u32 buffer[4];
 u32 index = 0;




 buffer[index++] = hwicap_type_1_write(drvdata->config_regs->CMD) | 1;
 buffer[index++] = XHI_CMD_DESYNCH;
 buffer[index++] = XHI_NOOP_PACKET;
 buffer[index++] = XHI_NOOP_PACKET;





 return drvdata->config->set_configuration(drvdata,
   &buffer[0], index);
}
