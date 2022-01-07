
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbp2_lu {TYPE_1__* ne; } ;
struct TYPE_2__ {int in_limbo; } ;



__attribute__((used)) static inline int sbp2util_node_is_available(struct sbp2_lu *lu)
{
 return lu && lu->ne && !lu->ne->in_limbo;
}
