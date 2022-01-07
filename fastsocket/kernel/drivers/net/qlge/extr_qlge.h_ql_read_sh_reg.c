
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __le32 ;


 int le32_to_cpu (int ) ;
 int rmb () ;

__attribute__((used)) static inline u32 ql_read_sh_reg(__le32 *addr)
{
 u32 reg;
 reg = le32_to_cpu(*addr);
 rmb();
 return reg;
}
