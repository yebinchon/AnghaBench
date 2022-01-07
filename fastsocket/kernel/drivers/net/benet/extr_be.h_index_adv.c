
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ MODULO (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void index_adv(u16 *index, u16 val, u16 limit)
{
 *index = MODULO((*index + val), limit);
}
