
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_context {int dummy; } ;


 int pvr2_context_set_notify (struct pvr2_context*,int) ;

__attribute__((used)) static void pvr2_context_notify(struct pvr2_context *mp)
{
 pvr2_context_set_notify(mp,!0);
}
