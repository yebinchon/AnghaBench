
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int __be32 ;


 int __be32_to_cpu (int ) ;

__attribute__((used)) static inline void LOAD_OP(int I, u32 *W, const u8 *input)
{
 W[I] = __be32_to_cpu( ((__be32*)(input))[I] );
}
