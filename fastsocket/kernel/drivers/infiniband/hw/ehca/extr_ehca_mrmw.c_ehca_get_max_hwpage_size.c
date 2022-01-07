
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ehca_shca {int hca_cap_mr_pgsize; } ;


 int rounddown_pow_of_two (int ) ;

__attribute__((used)) static u64 ehca_get_max_hwpage_size(struct ehca_shca *shca)
{
 return rounddown_pow_of_two(shca->hca_cap_mr_pgsize);
}
