
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int idx; TYPE_1__* tst; } ;
struct TYPE_3__ {int get; } ;


 int fill_get_buf (int ) ;
 scalar_t__ repeat_test ;
 int simple_strtol (char*,int *,int) ;
 TYPE_2__ ts ;

__attribute__((used)) static void skip_back_repeat_test(char *arg)
{
 int go_back = simple_strtol(arg, ((void*)0), 10);

 repeat_test--;
 if (repeat_test <= 0)
  ts.idx++;
 else
  ts.idx -= go_back;
 fill_get_buf(ts.tst[ts.idx].get);
}
