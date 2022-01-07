
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct TYPE_3__ {scalar_t__ media_bay; } ;


 int MB_FD ;
 scalar_t__ check_media_bay (scalar_t__,int ) ;
 int floppy_count ;
 TYPE_1__* floppy_states ;
 int start_request (TYPE_1__*) ;

__attribute__((used)) static void do_fd_request(struct request_queue * q)
{
 int i;
 for(i=0;i<floppy_count;i++)
 {





  start_request(&floppy_states[i]);
 }
}
