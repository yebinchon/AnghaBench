
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cols; int rows; int dev; } ;
struct tty3270 {int inattr; TYPE_1__ view; int freemem; void* input; struct string* prompt; } ;
struct string {int len; scalar_t__ string; } ;
typedef int blueprint ;







 void* alloc_string (int *,int) ;
 int memcpy (scalar_t__,unsigned char const*,int) ;
 int raw3270_buffer_address (int ,scalar_t__,unsigned int) ;

__attribute__((used)) static void
tty3270_create_prompt(struct tty3270 *tp)
{
 static const unsigned char blueprint[] =
  { 129, 0, 0, 0x6e, 128, 132,

    131, 130, 0, 0, 0 };
 struct string *line;
 unsigned int offset;

 line = alloc_string(&tp->freemem,
       sizeof(blueprint) + tp->view.cols * 2 - 9);
 tp->prompt = line;
 tp->inattr = 132;

 memcpy(line->string, blueprint, sizeof(blueprint));
 line->len = sizeof(blueprint);

 offset = tp->view.cols * (tp->view.rows - 2);
 raw3270_buffer_address(tp->view.dev, line->string + 1, offset);
 offset = tp->view.cols * tp->view.rows - 9;
 raw3270_buffer_address(tp->view.dev, line->string + 8, offset);


 tp->input = alloc_string(&tp->freemem, tp->view.cols * 2 - 9 + 6);
}
