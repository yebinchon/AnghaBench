
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int write_pcr (int ) ;

__attribute__((used)) static void direct_pcr_write(u64 val)
{
 write_pcr(val);
}
