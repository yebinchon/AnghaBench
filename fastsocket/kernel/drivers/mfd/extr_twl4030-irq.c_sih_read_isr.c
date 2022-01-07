
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct sih {int bytes_ixr; TYPE_1__* mask; int module; } ;
struct TYPE_2__ {int isr_offset; } ;


 size_t irq_line ;
 int le32_to_cpu (scalar_t__) ;
 int twl4030_i2c_read (int ,int *,int ,int ) ;

__attribute__((used)) static inline int sih_read_isr(const struct sih *sih)
{
 int status;
 union {
  u8 bytes[4];
  u32 word;
 } isr;



 isr.word = 0;
 status = twl4030_i2c_read(sih->module, isr.bytes,
   sih->mask[irq_line].isr_offset, sih->bytes_ixr);

 return (status < 0) ? status : le32_to_cpu(isr.word);
}
