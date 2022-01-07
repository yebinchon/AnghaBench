
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* cmnd; } ;
typedef TYPE_1__ Scsi_Cmnd ;
__attribute__((used)) static int is_dir_out(Scsi_Cmnd * cmd)
{
 switch (cmd->cmnd[0]) {
 case 133:
 case 135:
 case 134:
 case 131:
 case 130:
 case 132:
 case 129:
 case 128:
 case 155:
 case 154:
 case 153:
 case 145:
 case 143:
 case 141:
 case 144:
 case 142:
 case 140:
 case 152:
 case 147:
 case 146:
 case 149:
 case 148:
 case 151:
 case 139:
 case 156:
 case 136:
 case 137:
 case 150:
 case 138:
 case 0xea:
  return 1;
 default:
  return 0;
 }
}
