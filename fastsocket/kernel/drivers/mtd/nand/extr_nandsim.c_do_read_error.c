
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * byte; } ;
struct TYPE_3__ {unsigned int row; } ;
struct nandsim {TYPE_2__ buf; TYPE_1__ regs; } ;


 int NS_WARN (char*,unsigned int) ;
 int memset (int *,int,int) ;
 int random32 () ;
 scalar_t__ read_error (unsigned int) ;

int do_read_error(struct nandsim *ns, int num)
{
 unsigned int page_no = ns->regs.row;

 if (read_error(page_no)) {
  int i;
  memset(ns->buf.byte, 0xFF, num);
  for (i = 0; i < num; ++i)
   ns->buf.byte[i] = random32();
  NS_WARN("simulating read error in page %u\n", page_no);
  return 1;
 }
 return 0;
}
