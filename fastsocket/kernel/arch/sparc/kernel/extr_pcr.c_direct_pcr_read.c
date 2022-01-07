
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int read_pcr (int ) ;

__attribute__((used)) static u64 direct_pcr_read(void)
{
 u64 val;

 read_pcr(val);
 return val;
}
