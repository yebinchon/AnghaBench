
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct dtl {size_t cpu; } ;
struct TYPE_2__ {int dtl_idx; } ;


 TYPE_1__* lppaca ;

__attribute__((used)) static u64 dtl_current_index(struct dtl *dtl)
{
 return lppaca[dtl->cpu].dtl_idx;
}
