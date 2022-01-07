
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int __u8 ;
struct TYPE_2__ {int adb_type; } ;






 int cuda_read_pram (int) ;
 int maciisi_read_pram (int) ;
 TYPE_1__* macintosh_config ;
 int pmu_read_pram (int) ;
 int stub1 (int) ;
 int via_read_pram (int) ;

void mac_pram_read(int offset, __u8 *buffer, int len)
{
 __u8 (*func)(int);
 int i;

 switch(macintosh_config->adb_type) {
 case 130:
  func = maciisi_read_pram; break;
 case 129:
 case 128:
  func = pmu_read_pram; break;
 case 131:
  func = cuda_read_pram; break;
 default:
  func = via_read_pram;
 }
 if (!func)
  return;
 for (i = 0 ; i < len ; i++) {
  buffer[i] = (*func)(offset++);
 }
}
