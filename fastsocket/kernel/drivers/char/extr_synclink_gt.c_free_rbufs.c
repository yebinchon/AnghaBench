
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slgt_info {unsigned int rbuf_count; unsigned int rbuf_current; int rbuf_fill_level; TYPE_1__* rbufs; } ;
struct TYPE_2__ {scalar_t__ status; } ;


 int set_desc_count (TYPE_1__,int ) ;

__attribute__((used)) static void free_rbufs(struct slgt_info *info, unsigned int i, unsigned int last)
{
 int done = 0;

 while(!done) {

  info->rbufs[i].status = 0;
  set_desc_count(info->rbufs[i], info->rbuf_fill_level);
  if (i == last)
   done = 1;
  if (++i == info->rbuf_count)
   i = 0;
 }
 info->rbuf_current = i;
}
