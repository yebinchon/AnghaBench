
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CHILDREN_PER_NODE ;

__attribute__((used)) static inline unsigned int get_child(unsigned int n, unsigned int k)
{
 return (n * CHILDREN_PER_NODE) + k;
}
