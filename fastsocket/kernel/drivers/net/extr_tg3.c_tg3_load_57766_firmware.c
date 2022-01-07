
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tg3_firmware_hdr {int base_addr; } ;
struct tg3 {TYPE_1__* fw; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int NO_NVRAM ;
 scalar_t__ TG3_57766_FW_BASE_ADDR ;
 scalar_t__ be32_to_cpu (int ) ;
 int tg3_flag (struct tg3*,int ) ;
 int tg3_load_firmware_cpu (struct tg3*,int ,scalar_t__,int ,struct tg3_firmware_hdr*) ;
 scalar_t__ tg3_rxcpu_pause (struct tg3*) ;
 int tg3_rxcpu_resume (struct tg3*) ;
 scalar_t__ tg3_validate_rxcpu_state (struct tg3*) ;

__attribute__((used)) static void tg3_load_57766_firmware(struct tg3 *tp)
{
 struct tg3_firmware_hdr *fw_hdr;

 if (!tg3_flag(tp, NO_NVRAM))
  return;

 if (tg3_validate_rxcpu_state(tp))
  return;

 if (!tp->fw)
  return;
 fw_hdr = (struct tg3_firmware_hdr *)tp->fw->data;
 if (be32_to_cpu(fw_hdr->base_addr) != TG3_57766_FW_BASE_ADDR)
  return;

 if (tg3_rxcpu_pause(tp))
  return;


 tg3_load_firmware_cpu(tp, 0, TG3_57766_FW_BASE_ADDR, 0, fw_hdr);

 tg3_rxcpu_resume(tp);
}
