
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct superhyway_vcr_info {int dummy; } ;


 int ctrl_outl (int,unsigned long) ;

__attribute__((used)) static int sh4202_write_vcr(unsigned long base, struct superhyway_vcr_info vcr)
{
 u64 tmp = *(u64 *)&vcr;

 ctrl_outl((tmp >> 32) & 0xffffffff, base);
 ctrl_outl(tmp & 0xffffffff, base + sizeof(u32));

 return 0;
}
