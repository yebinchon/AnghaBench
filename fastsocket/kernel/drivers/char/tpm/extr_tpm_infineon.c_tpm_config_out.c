
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ iotype; scalar_t__ index_off; scalar_t__ mem_base; scalar_t__ config_port; } ;


 scalar_t__ TPM_INF_IO_PORT ;
 int outb (unsigned char,scalar_t__) ;
 TYPE_1__ tpm_dev ;
 int writeb (unsigned char,scalar_t__) ;

__attribute__((used)) static inline void tpm_config_out(unsigned char data, unsigned char offset)
{
 if (tpm_dev.iotype == TPM_INF_IO_PORT)
  outb(data, tpm_dev.config_port + offset);
 else
  writeb(data, tpm_dev.mem_base + tpm_dev.index_off + offset);
}
