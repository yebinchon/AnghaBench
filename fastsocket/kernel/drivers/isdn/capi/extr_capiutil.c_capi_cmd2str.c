
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 size_t command_2_index (int ,int ) ;
 char** mnames ;

char *capi_cmd2str(u8 cmd, u8 subcmd)
{
 return mnames[command_2_index(cmd, subcmd)];
}
