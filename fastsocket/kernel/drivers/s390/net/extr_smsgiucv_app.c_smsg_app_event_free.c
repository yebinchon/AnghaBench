
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsg_app_event {struct smsg_app_event* buf; } ;


 int kfree (struct smsg_app_event*) ;

__attribute__((used)) static void smsg_app_event_free(struct smsg_app_event *ev)
{
 kfree(ev->buf);
 kfree(ev);
}
