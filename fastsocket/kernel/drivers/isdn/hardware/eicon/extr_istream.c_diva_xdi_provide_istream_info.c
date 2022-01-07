
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ provided_service; } ;
typedef TYPE_1__ diva_xdi_stream_interface_t ;
typedef int ADAPTER ;



void diva_xdi_provide_istream_info (ADAPTER* a,
                  diva_xdi_stream_interface_t* pi) {
  pi->provided_service = 0;
}
