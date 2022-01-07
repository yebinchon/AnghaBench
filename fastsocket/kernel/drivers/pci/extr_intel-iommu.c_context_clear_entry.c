
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context_entry {scalar_t__ hi; scalar_t__ lo; } ;



__attribute__((used)) static inline void context_clear_entry(struct context_entry *context)
{
 context->lo = 0;
 context->hi = 0;
}
