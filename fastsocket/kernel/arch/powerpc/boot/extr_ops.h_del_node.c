
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* del_node ) (void const*) ;} ;


 TYPE_1__ dt_ops ;
 int stub1 (void const*) ;

__attribute__((used)) static inline int del_node(const void *devp)
{
 return dt_ops.del_node ? dt_ops.del_node(devp) : -1;
}
