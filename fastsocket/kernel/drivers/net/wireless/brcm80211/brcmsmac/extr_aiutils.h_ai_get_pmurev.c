
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_pub {int pmurev; } ;



__attribute__((used)) static inline int ai_get_pmurev(struct si_pub *sih)
{
 return sih->pmurev;
}
