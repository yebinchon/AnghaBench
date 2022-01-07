
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ascebc; } ;
struct tty3270 {scalar_t__ nr_up; int update_flags; TYPE_2__* status; TYPE_1__ view; } ;
struct TYPE_4__ {scalar_t__ string; } ;


 int TTY_UPDATE_STATUS ;
 int codepage_convert (int ,scalar_t__,int) ;
 int memcpy (scalar_t__,char*,int) ;

__attribute__((used)) static void
tty3270_update_status(struct tty3270 * tp)
{
 char *str;

 str = (tp->nr_up != 0) ? "History" : "Running";
 memcpy(tp->status->string + 8, str, 7);
 codepage_convert(tp->view.ascebc, tp->status->string + 8, 7);
 tp->update_flags |= TTY_UPDATE_STATUS;
}
