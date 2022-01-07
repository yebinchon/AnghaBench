
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_context {int disconnect_flag; int hdw; } ;


 int pvr2_context_notify (struct pvr2_context*) ;
 int pvr2_hdw_disconnect (int ) ;

void pvr2_context_disconnect(struct pvr2_context *mp)
{
 pvr2_hdw_disconnect(mp->hdw);
 mp->disconnect_flag = !0;
 pvr2_context_notify(mp);
}
