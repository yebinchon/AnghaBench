
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ iotype; scalar_t__ data_regs; scalar_t__ mem_base; } ;


 scalar_t__ TPM_INF_IO_PORT ;
 unsigned char inb (scalar_t__) ;
 unsigned char readb (scalar_t__) ;
 TYPE_1__ tpm_dev ;

__attribute__((used)) static inline unsigned char tpm_data_in(unsigned char offset)
{
 if (tpm_dev.iotype == TPM_INF_IO_PORT)
  return inb(tpm_dev.data_regs + offset);
 else
  return readb(tpm_dev.mem_base + tpm_dev.data_regs + offset);
}
