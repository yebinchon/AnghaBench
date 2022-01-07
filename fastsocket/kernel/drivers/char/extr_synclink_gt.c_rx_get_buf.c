
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int tty; } ;
struct TYPE_6__ {int mode; } ;
struct slgt_info {unsigned int rbuf_current; int flag_buf; TYPE_3__* rbufs; TYPE_2__ port; TYPE_1__ params; } ;
struct TYPE_8__ {int buf; } ;


 int DBGDATA (struct slgt_info*,int ,unsigned int,char*) ;
 int DBGINFO (char*) ;


 int desc_complete (TYPE_3__) ;
 unsigned int desc_count (TYPE_3__) ;
 int desc_residue (TYPE_3__) ;
 int free_rbufs (struct slgt_info*,unsigned int,unsigned int) ;
 int ldisc_receive_buf (int ,int ,int ,unsigned int) ;

__attribute__((used)) static bool rx_get_buf(struct slgt_info *info)
{
 unsigned int i = info->rbuf_current;
 unsigned int count;

 if (!desc_complete(info->rbufs[i]))
  return 0;
 count = desc_count(info->rbufs[i]);
 switch(info->params.mode) {
 case 128:
 case 129:

  if (desc_residue(info->rbufs[i]))
   count--;
  break;
 }
 DBGDATA(info, info->rbufs[i].buf, count, "rx");
 DBGINFO(("rx_get_buf size=%d\n", count));
 if (count)
  ldisc_receive_buf(info->port.tty, info->rbufs[i].buf,
      info->flag_buf, count);
 free_rbufs(info, i, i);
 return 1;
}
