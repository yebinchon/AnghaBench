
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;


 int pgd_val (int ) ;

__attribute__((used)) static inline int srmmu_pgd_none(pgd_t pgd)
{ return !(pgd_val(pgd) & 0xFFFFFFF); }
