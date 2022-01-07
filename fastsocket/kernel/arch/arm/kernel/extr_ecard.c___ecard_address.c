
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int slot_no; } ;
typedef TYPE_1__ ecard_t ;
typedef int card_type_t ;
typedef int card_speed_t ;



 int ECARD_FAST ;


 int IOMD_ECTCR ;
 int IO_EC_EASI_BASE ;
 int IO_EC_IOC4_BASE ;
 int IO_EC_IOC_BASE ;
 unsigned int IO_EC_MEMC8_BASE ;
 int IO_EC_MEMC_BASE ;
 int ectcr ;
 int iomd_writeb (int,int ) ;

__attribute__((used)) static unsigned int __ecard_address(ecard_t *ec, card_type_t type, card_speed_t speed)
{
 unsigned long address = 0;
 int slot = ec->slot_no;

 if (ec->slot_no == 8)
  return IO_EC_MEMC8_BASE;

 ectcr &= ~(1 << slot);

 switch (type) {
 case 128:
  if (slot < 4)
   address = IO_EC_MEMC_BASE + (slot << 12);
  break;

 case 129:
  if (slot < 4)
   address = IO_EC_IOC_BASE + (slot << 12);




  if (address)
   address += speed << 17;
  break;
 default:
  break;
 }




 return address;
}
