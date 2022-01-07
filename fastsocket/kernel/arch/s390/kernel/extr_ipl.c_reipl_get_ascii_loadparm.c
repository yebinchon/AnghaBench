
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int load_parm; } ;
struct TYPE_4__ {TYPE_1__ ccw; } ;
struct ipl_parameter_block {TYPE_2__ ipl_info; } ;


 int EBCASC (char*,size_t) ;
 size_t LOADPARM_LEN ;
 int memcpy (char*,int ,size_t) ;
 int strstrip (char*) ;

__attribute__((used)) static void reipl_get_ascii_loadparm(char *loadparm,
         struct ipl_parameter_block *ibp)
{
 memcpy(loadparm, ibp->ipl_info.ccw.load_parm, LOADPARM_LEN);
 EBCASC(loadparm, LOADPARM_LEN);
 loadparm[LOADPARM_LEN] = 0;
 strstrip(loadparm);
}
