
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (unsigned int,int ) ;
 int port ;

__attribute__((used)) static void
pvpanic_send_event(unsigned int event)
{
 outb(event, port);
}
