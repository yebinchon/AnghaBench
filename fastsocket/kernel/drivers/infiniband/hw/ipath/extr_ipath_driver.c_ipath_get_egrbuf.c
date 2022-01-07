
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct ipath_devdata {TYPE_2__* ipath_port0_skbinfo; } ;
struct TYPE_4__ {TYPE_1__* skb; } ;
struct TYPE_3__ {scalar_t__ data; } ;



__attribute__((used)) static inline void *ipath_get_egrbuf(struct ipath_devdata *dd, u32 bufnum)
{
 return dd->ipath_port0_skbinfo ?
  (void *) dd->ipath_port0_skbinfo[bufnum].skb->data : ((void*)0);
}
