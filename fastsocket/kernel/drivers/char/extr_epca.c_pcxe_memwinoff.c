
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct board_info {scalar_t__ port; } ;


 int FEPMEM ;
 int inb (scalar_t__) ;
 int outb_p (int,scalar_t__) ;

__attribute__((used)) static void pcxe_memwinoff(struct board_info *b, unsigned int win)
{
 outb_p(inb(b->port) & ~FEPMEM, b->port + 1);
 outb_p(0, b->port + 1);
}
