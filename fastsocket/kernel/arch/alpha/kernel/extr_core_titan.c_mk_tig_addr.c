
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TITAN_TIG_SPACE ;

__attribute__((used)) static inline volatile unsigned long *
mk_tig_addr(int offset)
{
 return (volatile unsigned long *)(TITAN_TIG_SPACE + (offset << 6));
}
