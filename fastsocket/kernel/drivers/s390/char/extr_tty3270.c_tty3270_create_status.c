
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cols; int rows; int dev; } ;
struct tty3270 {TYPE_1__ view; struct string* status; int freemem; } ;
struct string {scalar_t__ string; } ;
typedef int blueprint ;
 struct string* alloc_string (int *,int) ;
 int memcpy (scalar_t__,unsigned char const*,int) ;
 int raw3270_buffer_address (int ,scalar_t__,unsigned int) ;

__attribute__((used)) static void
tty3270_create_status(struct tty3270 * tp)
{
 static const unsigned char blueprint[] =
  { 129, 0, 0, 128, 131, 130, 132, 134,
    0, 0, 0, 0, 0, 0, 0, 128, 131, 130, 132,
    133 };
 struct string *line;
 unsigned int offset;

 line = alloc_string(&tp->freemem,sizeof(blueprint));
 tp->status = line;

 memcpy(line->string, blueprint, sizeof(blueprint));

 offset = tp->view.cols * tp->view.rows - 9;
 raw3270_buffer_address(tp->view.dev, line->string + 1, offset);
}
