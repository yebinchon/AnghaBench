
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int value_size; } ;
struct btree_node {TYPE_1__ header; } ;


 int le32_to_cpu (int ) ;
 void* value_base (struct btree_node*) ;

__attribute__((used)) static inline void *value_ptr(struct btree_node *n, uint32_t index)
{
 uint32_t value_size = le32_to_cpu(n->header.value_size);
 return value_base(n) + (value_size * index);
}
