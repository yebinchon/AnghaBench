
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel {int type; int flags; int fsm; struct channel* next; int id; } ;
typedef enum ctcm_channel_types { ____Placeholder_ctcm_channel_types } ctcm_channel_types ;


 int CHANNEL_FLAGS_INUSE ;
 int CHANNEL_FLAGS_READ ;
 int CHANNEL_FLAGS_RWMASK ;
 int CHANNEL_FLAGS_WRITE ;
 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,int,char*,int) ;
 int CTCM_FUNTAIL ;
 int CTCM_ID_SIZE ;
 int CTC_DBF_ERROR ;
 int CTC_STATE_STOPPED ;
 int ERROR ;
 int WRITE ;
 struct channel* channels ;
 int fsm_newstate (int ,int ) ;
 scalar_t__ strncmp (int ,char*,int ) ;

__attribute__((used)) static struct channel *channel_get(enum ctcm_channel_types type,
     char *id, int direction)
{
 struct channel *ch = channels;

 while (ch && (strncmp(ch->id, id, CTCM_ID_SIZE) || (ch->type != type)))
  ch = ch->next;
 if (!ch) {
  CTCM_DBF_TEXT_(ERROR, CTC_DBF_ERROR,
    "%s(%d, %s, %d) not found in channel list\n",
    CTCM_FUNTAIL, type, id, direction);
 } else {
  if (ch->flags & CHANNEL_FLAGS_INUSE)
   ch = ((void*)0);
  else {
   ch->flags |= CHANNEL_FLAGS_INUSE;
   ch->flags &= ~CHANNEL_FLAGS_RWMASK;
   ch->flags |= (direction == WRITE)
       ? CHANNEL_FLAGS_WRITE : CHANNEL_FLAGS_READ;
   fsm_newstate(ch->fsm, CTC_STATE_STOPPED);
  }
 }
 return ch;
}
