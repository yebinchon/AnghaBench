
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lcs_channel {TYPE_1__* iob; } ;
struct TYPE_2__ {int * data; int state; } ;


 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int LCS_BUF_STATE_EMPTY ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 int LCS_IOBUFFERSIZE ;
 int LCS_NUM_BUFFS ;
 int kfree (int *) ;
 int * kzalloc (int ,int) ;
 int setup ;

__attribute__((used)) static int
lcs_alloc_channel(struct lcs_channel *channel)
{
 int cnt;

 LCS_DBF_TEXT(2, setup, "ichalloc");
 for (cnt = 0; cnt < LCS_NUM_BUFFS; cnt++) {

  channel->iob[cnt].data =
   kzalloc(LCS_IOBUFFERSIZE, GFP_DMA | GFP_KERNEL);
  if (channel->iob[cnt].data == ((void*)0))
   break;
  channel->iob[cnt].state = LCS_BUF_STATE_EMPTY;
 }
 if (cnt < LCS_NUM_BUFFS) {

  LCS_DBF_TEXT(2, setup, "echalloc");
  while (cnt-- > 0)
   kfree(channel->iob[cnt].data);
  return -ENOMEM;
 }
 return 0;
}
