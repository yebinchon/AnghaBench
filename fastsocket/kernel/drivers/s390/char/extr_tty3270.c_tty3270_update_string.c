
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cols; int dev; } ;
struct tty3270 {TYPE_1__ view; } ;
struct string {unsigned char* string; int len; } ;


 unsigned char TO_RA ;
 int raw3270_buffer_address (int ,unsigned char*,int) ;

__attribute__((used)) static void
tty3270_update_string(struct tty3270 *tp, struct string *line, int nr)
{
 unsigned char *cp;

 raw3270_buffer_address(tp->view.dev, line->string + 1,
          tp->view.cols * nr);
 cp = line->string + line->len - 4;
 if (*cp == TO_RA)
  raw3270_buffer_address(tp->view.dev, cp + 1,
           tp->view.cols * (nr + 1));
}
