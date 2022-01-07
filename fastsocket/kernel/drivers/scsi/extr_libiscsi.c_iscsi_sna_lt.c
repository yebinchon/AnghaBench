
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ SNA32_CHECK ;

__attribute__((used)) static int iscsi_sna_lt(u32 n1, u32 n2)
{
 return n1 != n2 && ((n1 < n2 && (n2 - n1 < SNA32_CHECK)) ||
       (n1 > n2 && (n2 - n1 < SNA32_CHECK)));
}
