
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ether; scalar_t__ main; } ;
typedef TYPE_1__ pvc_device ;



__attribute__((used)) static inline int pvc_is_used(pvc_device *pvc)
{
 return pvc->main || pvc->ether;
}
