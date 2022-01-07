
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int ** ioctl_reply_context; } ;
typedef TYPE_1__ adpt_hba ;



__attribute__((used)) static void *adpt_ioctl_from_context(adpt_hba *pHba, u32 context)
{



 void *p = pHba->ioctl_reply_context[context];
 pHba->ioctl_reply_context[context] = ((void*)0);

 return p;

}
