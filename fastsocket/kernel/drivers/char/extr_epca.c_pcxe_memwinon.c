
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct board_info {scalar_t__ port; } ;


 unsigned int FEPWIN ;
 int outb_p (unsigned int,scalar_t__) ;

__attribute__((used)) static void pcxe_memwinon(struct board_info *b, unsigned int win)
{
 outb_p(FEPWIN | win, b->port + 1);
}
