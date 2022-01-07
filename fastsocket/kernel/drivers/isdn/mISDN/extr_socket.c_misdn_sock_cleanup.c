
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_ISDN ;
 int sock_unregister (int ) ;

void
misdn_sock_cleanup(void)
{
 sock_unregister(PF_ISDN);
}
