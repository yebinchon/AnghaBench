
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int __u8 ;
struct TYPE_2__ {int adb_type; } ;






 void cuda_write_pram (int,int ) ;
 void maciisi_write_pram (int,int ) ;
 TYPE_1__* macintosh_config ;
 void pmu_write_pram (int,int ) ;
 void stub1 (int,int ) ;
 void via_write_pram (int,int ) ;

void mac_pram_write(int offset, __u8 *buffer, int len)
{
 void (*func)(int, __u8);
 int i;

 switch(macintosh_config->adb_type) {
 case 130:
  func = maciisi_write_pram; break;
 case 129:
 case 128:
  func = pmu_write_pram; break;
 case 131:
  func = cuda_write_pram; break;
 default:
  func = via_write_pram;
 }
 if (!func)
  return;
 for (i = 0 ; i < len ; i++) {
  (*func)(offset++, buffer[i]);
 }
}
