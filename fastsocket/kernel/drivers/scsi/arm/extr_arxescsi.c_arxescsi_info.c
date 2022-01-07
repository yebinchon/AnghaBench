
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* type; } ;
struct TYPE_7__ {TYPE_2__ scsi; } ;
struct arxescsi_info {TYPE_4__* ec; TYPE_3__ info; } ;
struct Scsi_Host {TYPE_1__* hostt; scalar_t__ hostdata; } ;
struct TYPE_8__ {int slot_no; } ;
struct TYPE_5__ {char* name; } ;


 char* VERSION ;
 int sprintf (char*,char*,char*,char*,int,char*) ;

__attribute__((used)) static const char *arxescsi_info(struct Scsi_Host *host)
{
 struct arxescsi_info *info = (struct arxescsi_info *)host->hostdata;
 static char string[150];

 sprintf(string, "%s (%s) in slot %d v%s",
  host->hostt->name, info->info.scsi.type, info->ec->slot_no,
  VERSION);

 return string;
}
