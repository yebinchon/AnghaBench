
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct bteinfo_s {int dummy; } ;


 int BTE_CTRL_STORE (struct bteinfo_s*,int) ;
 int BTE_LNSTAT_STORE (struct bteinfo_s*,int) ;
 int IBLS_BUSY ;
 scalar_t__ is_shub2 () ;

__attribute__((used)) static inline void bte_start_transfer(struct bteinfo_s *bte, u64 len, u64 mode)
{
 if (is_shub2()) {
  BTE_CTRL_STORE(bte, (IBLS_BUSY | ((len) | (mode) << 24)));
 } else {
  BTE_LNSTAT_STORE(bte, len);
  BTE_CTRL_STORE(bte, mode);
 }
}
