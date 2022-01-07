
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itcw {int num_tidaws; int tcw; } ;


 int tcw_finalize (int ,int ) ;

void itcw_finalize(struct itcw *itcw)
{
 tcw_finalize(itcw->tcw, itcw->num_tidaws);
}
