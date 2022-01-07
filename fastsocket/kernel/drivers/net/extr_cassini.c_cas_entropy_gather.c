
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct cas {int cas_flags; scalar_t__ regs; } ;


 int CAS_FLAG_ENTROPY_DEV ;
 scalar_t__ REG_ENTROPY_IV ;
 int batch_entropy_store (int ,int ,int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline void cas_entropy_gather(struct cas *cp)
{
}
