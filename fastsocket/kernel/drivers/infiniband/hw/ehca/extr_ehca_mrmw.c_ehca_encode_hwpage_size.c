
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int WARN_ON (int) ;
 int ilog2 (int) ;

__attribute__((used)) static u32 ehca_encode_hwpage_size(u32 pgsize)
{
 int log = ilog2(pgsize);
 WARN_ON(log < 12 || log > 24 || log & 3);
 return (log - 12) / 4;
}
