
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int rs; int rw; } ;


 int ndelay (int) ;
 TYPE_1__* picvue ;
 int pvc_read_byte (int ) ;
 int pvc_reg_read () ;
 int pvc_reg_write (int ) ;

__attribute__((used)) static u8 pvc_read_data(void)
{
 u32 data = pvc_reg_read();
 u8 byte;
 data |= picvue->rw;
 data &= ~picvue->rs;
 pvc_reg_write(data);
 ndelay(40);
 byte = pvc_read_byte(data);
 data |= picvue->rs;
 pvc_reg_write(data);
 return byte;
}
