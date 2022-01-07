
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct cmac {int adapter; } ;


 int vsc_read (int ,unsigned int,scalar_t__*) ;

__attribute__((used)) static void rmon_update(struct cmac *mac, unsigned int addr, u64 *stat)
{
 u32 v, lo;

 vsc_read(mac->adapter, addr, &v);
 lo = *stat;
 *stat = *stat - lo + v;

 if (v == 0)
  return;

 if (v < lo)
  *stat += (1ULL << 32);
}
