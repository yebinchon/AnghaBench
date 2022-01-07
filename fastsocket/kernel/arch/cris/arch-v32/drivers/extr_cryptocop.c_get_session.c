
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptocop_session {scalar_t__ sid; struct cryptocop_session* next; } ;
typedef scalar_t__ cryptocop_session_id ;


 struct cryptocop_session* cryptocop_sessions ;
 int cryptocop_sessions_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct cryptocop_session *get_session(cryptocop_session_id sid)
{
 struct cryptocop_session *sess;
 unsigned long int flags;

 spin_lock_irqsave(&cryptocop_sessions_lock, flags);
 sess = cryptocop_sessions;
 while (sess && (sess->sid != sid)){
  sess = sess->next;
 }
 spin_unlock_irqrestore(&cryptocop_sessions_lock, flags);

 return sess;
}
