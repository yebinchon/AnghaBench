
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ITRC_INTR ;
 int ITRC_NO_PORT ;
 int ITRC_RETURN ;
 int POLL_TIMEOUT ;
 int PollTimer ;
 int ip2_polled_interrupt () ;
 int ip2trace (int ,int ,int,int ) ;
 int mod_timer (int *,int ) ;

__attribute__((used)) static void
ip2_poll(unsigned long arg)
{
 ip2trace (ITRC_NO_PORT, ITRC_INTR, 100, 0 );




 ip2_polled_interrupt();

 mod_timer(&PollTimer, POLL_TIMEOUT);

 ip2trace (ITRC_NO_PORT, ITRC_INTR, ITRC_RETURN, 0 );
}
