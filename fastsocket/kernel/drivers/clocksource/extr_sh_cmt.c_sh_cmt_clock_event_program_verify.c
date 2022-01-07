
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_cmt_priv {unsigned long next_match_value; unsigned long max_match_value; unsigned long match_value; int flags; } ;


 int CMCOR ;
 int FLAG_REPROGRAM ;
 int FLAG_SKIPEVENT ;
 int pr_warning (char*) ;
 unsigned long sh_cmt_get_counter (struct sh_cmt_priv*,int*) ;
 int sh_cmt_write (struct sh_cmt_priv*,int ,unsigned long) ;

__attribute__((used)) static void sh_cmt_clock_event_program_verify(struct sh_cmt_priv *p,
           int absolute)
{
 unsigned long new_match;
 unsigned long value = p->next_match_value;
 unsigned long delay = 0;
 unsigned long now = 0;
 int has_wrapped;

 now = sh_cmt_get_counter(p, &has_wrapped);
 p->flags |= FLAG_REPROGRAM;

 if (has_wrapped) {




  p->flags |= FLAG_SKIPEVENT;
  return;
 }

 if (absolute)
  now = 0;

 do {



  new_match = now + value + delay;
  if (new_match > p->max_match_value)
   new_match = p->max_match_value;

  sh_cmt_write(p, CMCOR, new_match);

  now = sh_cmt_get_counter(p, &has_wrapped);
  if (has_wrapped && (new_match > p->match_value)) {






   p->flags |= FLAG_SKIPEVENT;
   break;
  }

  if (has_wrapped) {






   p->match_value = new_match;
   break;
  }


  if (now < new_match) {





   p->match_value = new_match;
   break;
  }







  if (delay)
   delay <<= 1;
  else
   delay = 1;

  if (!delay)
   pr_warning("sh_cmt: too long delay\n");

 } while (delay);
}
