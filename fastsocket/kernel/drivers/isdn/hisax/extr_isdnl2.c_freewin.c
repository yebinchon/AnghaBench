
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct PStack {int l2; } ;


 int freewin1 (int *) ;

__attribute__((used)) static inline void
freewin(struct PStack *st)
{
 freewin1(&st->l2);
}
