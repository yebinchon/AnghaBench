
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chbk {int wait; int flag; } ;


 int CLAW_DBF_TEXT (int,int ,char*) ;
 int CLAW_TIMER ;
 int trace ;
 int wake_up (int *) ;

__attribute__((used)) static void
claw_timer ( struct chbk * p_ch )
{
 CLAW_DBF_TEXT(4, trace, "timer");
        p_ch->flag |= CLAW_TIMER;
        wake_up(&p_ch->wait);
        return;
}
