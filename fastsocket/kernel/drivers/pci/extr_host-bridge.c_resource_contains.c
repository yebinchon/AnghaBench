
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ start; scalar_t__ end; } ;



__attribute__((used)) static bool resource_contains(struct resource *res1, struct resource *res2)
{
 return res1->start <= res2->start && res1->end >= res2->end;
}
