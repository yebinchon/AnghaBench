
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* (* create_node ) (void const*,char const*) ;} ;


 TYPE_1__ dt_ops ;
 void* stub1 (void const*,char const*) ;

__attribute__((used)) static inline void *create_node(const void *parent, const char *name)
{
 return dt_ops.create_node ? dt_ops.create_node(parent, name) : ((void*)0);
}
