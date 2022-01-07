
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct board_info {int (* memwinoff ) (struct board_info*,unsigned int) ;} ;


 int stub1 (struct board_info*,unsigned int) ;

__attribute__((used)) static void memwinoff(struct board_info *b, unsigned int win)
{
 b->memwinoff(b, win);
}
