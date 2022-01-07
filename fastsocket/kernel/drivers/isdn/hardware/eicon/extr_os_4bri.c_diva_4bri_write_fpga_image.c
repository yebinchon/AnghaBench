
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ dword ;
struct TYPE_3__ {int xdi_adapter; } ;
typedef TYPE_1__ diva_os_xdi_adapter_t ;
typedef int byte ;


 int * diva_xdiLoadFileFile ;
 scalar_t__ diva_xdiLoadFileLength ;
 int qBri_FPGA_download (int *) ;

__attribute__((used)) static int
diva_4bri_write_fpga_image(diva_os_xdi_adapter_t * a, byte * data,
      dword length)
{
 int ret;

 diva_xdiLoadFileFile = data;
 diva_xdiLoadFileLength = length;

 ret = qBri_FPGA_download(&a->xdi_adapter);

 diva_xdiLoadFileFile = ((void*)0);
 diva_xdiLoadFileLength = 0;

 return (ret ? 0 : -1);
}
