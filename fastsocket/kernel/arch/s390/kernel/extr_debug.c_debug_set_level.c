
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int level; int lock; int name; } ;
typedef TYPE_1__ debug_info_t ;


 int DEBUG_MAX_LEVEL ;
 int DEBUG_OFF_LEVEL ;
 int pr_info (char*,int ,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
debug_set_level(debug_info_t* id, int new_level)
{
 unsigned long flags;
 if(!id)
  return;
 spin_lock_irqsave(&id->lock,flags);
        if(new_level == DEBUG_OFF_LEVEL){
                id->level = DEBUG_OFF_LEVEL;
  pr_info("%s: switched off\n",id->name);
        } else if ((new_level > DEBUG_MAX_LEVEL) || (new_level < 0)) {
  pr_info("%s: level %i is out of range (%i - %i)\n",
                        id->name, new_level, 0, DEBUG_MAX_LEVEL);
        } else {
                id->level = new_level;
        }
 spin_unlock_irqrestore(&id->lock,flags);
}
