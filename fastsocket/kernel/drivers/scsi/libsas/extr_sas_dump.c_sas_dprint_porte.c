
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum port_event { ____Placeholder_port_event } port_event ;


 int SAS_DPRINTK (char*,int,int ) ;
 int * sas_porte_str ;

void sas_dprint_porte(int phyid, enum port_event pe)
{
 SAS_DPRINTK("phy%d: port event: %s\n", phyid, sas_porte_str[pe]);
}
