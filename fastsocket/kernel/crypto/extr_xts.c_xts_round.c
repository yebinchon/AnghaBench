
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sinfo {void* t; int tfm; int (* fn ) (int ,void*,void*) ;} ;


 int be128_xor (void*,void*,void const*) ;
 int stub1 (int ,void*,void*) ;

__attribute__((used)) static inline void xts_round(struct sinfo *s, void *dst, const void *src)
{
 be128_xor(dst, s->t, src);
 s->fn(s->tfm, dst, dst);
 be128_xor(dst, dst, s->t);
}
