
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 int strcpy (char*,char*) ;

__attribute__((used)) static const char *atp870u_info(struct Scsi_Host *notused)
{
 static char buffer[128];

 strcpy(buffer, "ACARD AEC-6710/6712/67160 PCI Ultra/W/LVD SCSI-3 Adapter Driver V2.6+ac ");

 return buffer;
}
