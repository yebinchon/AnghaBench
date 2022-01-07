
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsg_app_event {int list; } ;


 scalar_t__ SMSG_PREFIX ;
 scalar_t__ isspace (char) ;
 int list_add_tail (int *,int *) ;
 int schedule_work (int *) ;
 scalar_t__ sender ;
 struct smsg_app_event* smsg_app_event_alloc (char const*,char*) ;
 int smsg_event_queue ;
 int smsg_event_queue_lock ;
 int smsg_event_work ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ strcmp (char const*,scalar_t__) ;
 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static void smsg_app_callback(const char *from, char *msg)
{
 struct smsg_app_event *se;



 if (sender && strlen(sender) > 0 && strcmp(from, sender) != 0)
  return;


 msg += strlen(SMSG_PREFIX);
 while (*msg && isspace(*msg))
  msg++;
 if (*msg == '\0')
  return;


 se = smsg_app_event_alloc(from, msg);
 if (!se)
  return;


 spin_lock(&smsg_event_queue_lock);
 list_add_tail(&se->list, &smsg_event_queue);
 spin_unlock(&smsg_event_queue_lock);

 schedule_work(&smsg_event_work);
 return;
}
