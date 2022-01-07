
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct nvbios_perf_fan {int pwm_divisor; } ;
struct nouveau_bios {int dummy; } ;


 int ENODEV ;
 int nv_ro16 (struct nouveau_bios*,scalar_t__) ;
 scalar_t__ perf_table (struct nouveau_bios*,int*,int*,int*,int*) ;

int
nvbios_perf_fan_parse(struct nouveau_bios *bios,
        struct nvbios_perf_fan *fan)
{
 u8 ver = 0, hdr = 0, cnt = 0, len = 0;
 u16 perf = perf_table(bios, &ver, &hdr, &cnt, &len);
 if (!perf)
  return -ENODEV;

 if (ver >= 0x20 && ver < 0x40 && hdr > 6)
  fan->pwm_divisor = nv_ro16(bios, perf + 6);
 else
  fan->pwm_divisor = 0;

 return 0;
}
