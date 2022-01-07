
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty3270 {scalar_t__ nr_up; int nr_lines; int lines; } ;
struct string {int len; int list; int string; } ;
typedef int blueprint ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,unsigned char const*,int) ;
 struct string* tty3270_alloc_string (struct tty3270*,int) ;

__attribute__((used)) static void
tty3270_blank_line(struct tty3270 *tp)
{
 static const unsigned char blueprint[] =
  { 128, 0, 0, 129, 132, 131,
    129, 133, 134, 130, 0, 0, 0 };
 struct string *s;

 s = tty3270_alloc_string(tp, sizeof(blueprint));
 memcpy(s->string, blueprint, sizeof(blueprint));
 s->len = sizeof(blueprint);
 list_add_tail(&s->list, &tp->lines);
 tp->nr_lines++;
 if (tp->nr_up != 0)
  tp->nr_up++;
}
