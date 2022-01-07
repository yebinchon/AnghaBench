
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct TYPE_2__ {int * rmmsg; } ;
struct mon_msg {TYPE_1__ msg; } ;



__attribute__((used)) static inline unsigned long mon_mca_end(struct mon_msg *monmsg)
{
 return *(u32 *) &monmsg->msg.rmmsg[4];
}
