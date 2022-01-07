
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mgsl_struct {scalar_t__ bus_type; int io_base; scalar_t__ mbre_bit; } ;


 scalar_t__ MGSL_BUS_TYPE_PCI ;
 int inw (int ) ;
 int outw (scalar_t__,int ) ;

__attribute__((used)) static void usc_OutDmaReg( struct mgsl_struct *info, u16 RegAddr, u16 RegValue )
{



 outw( RegAddr + info->mbre_bit, info->io_base );
 outw( RegValue, info->io_base );


 if ( info->bus_type == MGSL_BUS_TYPE_PCI )
  inw( info->io_base );

}
