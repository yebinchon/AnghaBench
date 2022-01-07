
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int dummy; } ;
struct hvc_struct {int tty_resize; struct winsize ws; } ;


 int schedule_work (int *) ;

void __hvc_resize(struct hvc_struct *hp, struct winsize ws)
{
 hp->ws = ws;
 schedule_work(&hp->tty_resize);
}
