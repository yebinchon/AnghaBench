
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct board_info {int port; } ;


 int FEPMEM ;
 int inb (int ) ;
 int outb_p (int,int ) ;

__attribute__((used)) static void pcxi_memwinoff(struct board_info *b, unsigned int win)
{
 outb_p(inb(b->port) & ~FEPMEM, b->port);
}
