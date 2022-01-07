
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx88_core {int dummy; } ;
struct cx8802_dev {struct cx88_core* core; } ;


 int MO_GP0_IO ;
 int cx_read (int ) ;

__attribute__((used)) static int vp3054_bit_getsda(void *data)
{
 struct cx8802_dev *dev = data;
 struct cx88_core *core = dev->core;
 u32 state;

 state = cx_read(MO_GP0_IO);
 return (state & 0x02) ? 1 : 0;
}
