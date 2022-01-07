
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *sym_scsi_bus_mode(int mode)
{
 switch(mode) {
 case 130: return "HVD";
 case 128: return "SE";
 case 129: return "LVD";
 }
 return "??";
}
