
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_quehead {struct sym_quehead* flink; struct sym_quehead* blink; } ;



__attribute__((used)) static inline void __sym_que_add(struct sym_quehead * new,
 struct sym_quehead * blink,
 struct sym_quehead * flink)
{
 flink->blink = new;
 new->flink = flink;
 new->blink = blink;
 blink->flink = new;
}
