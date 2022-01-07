
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_2__ {int (* partid_to_nasids ) (short,void*) ;} ;


 int stub1 (short,void*) ;
 TYPE_1__ xpc_interface ;

__attribute__((used)) static inline enum xp_retval
xpc_partid_to_nasids(short partid, void *nasids)
{
 return xpc_interface.partid_to_nasids(partid, nasids);
}
