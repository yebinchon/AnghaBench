
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fritzcard {int type; int addr; } ;




 int __read_status_pci (int ,int ) ;
 int __read_status_pciv2 (int ,int ) ;

__attribute__((used)) static u32
read_status(struct fritzcard *fc, u32 channel)
{
 switch (fc->type) {
 case 128:
  return __read_status_pciv2(fc->addr, channel);
 case 129:
  return __read_status_pci(fc->addr, channel);
 }

 return 0;
}
