
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tg3_firmware_hdr {int len; } ;
struct tg3 {int fw_len; TYPE_1__* fw; } ;
struct TYPE_2__ {int size; } ;


 int TG3_FW_HDR_LEN ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static int tg3_fw_data_len(struct tg3 *tp,
      const struct tg3_firmware_hdr *fw_hdr)
{
 int fw_len;
 if (tp->fw_len == 0xffffffff)
  fw_len = be32_to_cpu(fw_hdr->len);
 else
  fw_len = tp->fw->size;

 return (fw_len - TG3_FW_HDR_LEN) / sizeof(u32);
}
