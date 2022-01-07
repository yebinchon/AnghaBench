
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int BaseAddress; } ;
typedef TYPE_1__ nsp32_hw_data ;


 unsigned char ACKENB ;
 unsigned char AUTODIRECTION ;
 unsigned char BUSCTL_ACK ;
 int SCSI_BUS_CONTROL ;
 unsigned char nsp32_read1 (unsigned int,int ) ;
 int nsp32_write1 (unsigned int,int ,unsigned char) ;

__attribute__((used)) static void nsp32_sack_assert(nsp32_hw_data *data)
{
 unsigned int base = data->BaseAddress;
 unsigned char busctrl;

 busctrl = nsp32_read1(base, SCSI_BUS_CONTROL);
 busctrl |= (BUSCTL_ACK | AUTODIRECTION | ACKENB);
 nsp32_write1(base, SCSI_BUS_CONTROL, busctrl);
}
