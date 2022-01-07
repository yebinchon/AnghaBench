
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int dword ;
struct TYPE_8__ {int ControllerNumber; int * reset; int * prom; int * ctlReg; int * ram; int * Control; int * Address; } ;
struct TYPE_6__ {int qoffset; int* mem_type_id; int ** addr; } ;
struct TYPE_7__ {TYPE_1__ pci; } ;
struct TYPE_9__ {TYPE_3__ xdi_adapter; TYPE_2__ resources; } ;
typedef TYPE_4__ diva_os_xdi_adapter_t ;


 size_t MEM_TYPE_ADDRESS ;
 size_t MEM_TYPE_CONTROL ;
 size_t MEM_TYPE_CTLREG ;
 size_t MEM_TYPE_PROM ;
 size_t MEM_TYPE_RAM ;
 size_t MEM_TYPE_RESET ;
 int MQ_SHARED_RAM_SIZE ;

__attribute__((used)) static void diva_4bri_set_addresses(diva_os_xdi_adapter_t *a)
{
 dword offset = a->resources.pci.qoffset;
 dword c_offset = offset * a->xdi_adapter.ControllerNumber;

 a->resources.pci.mem_type_id[MEM_TYPE_RAM] = 2;
 a->resources.pci.mem_type_id[MEM_TYPE_ADDRESS] = 2;
 a->resources.pci.mem_type_id[MEM_TYPE_CONTROL] = 2;
 a->resources.pci.mem_type_id[MEM_TYPE_RESET] = 0;
 a->resources.pci.mem_type_id[MEM_TYPE_CTLREG] = 3;
 a->resources.pci.mem_type_id[MEM_TYPE_PROM] = 0;




 a->xdi_adapter.Address = a->resources.pci.addr[2];
 a->xdi_adapter.Address += c_offset;

 a->xdi_adapter.Control = a->resources.pci.addr[2];

 a->xdi_adapter.ram = a->resources.pci.addr[2];
 a->xdi_adapter.ram += c_offset + (offset - MQ_SHARED_RAM_SIZE);

 a->xdi_adapter.reset = a->resources.pci.addr[0];



 a->xdi_adapter.ctlReg = a->resources.pci.addr[3];



 a->xdi_adapter.prom = &a->xdi_adapter.reset[0x6E];
}
