
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SKB_WR_LIST_SIZE ;
 int* skb_wrs ;
 unsigned int wrlen ;

__attribute__((used)) static void init_wr_tab(unsigned int wr_len)
{
 int i;

 if (skb_wrs[1])
  return;
 for (i = 1; i < SKB_WR_LIST_SIZE; i++) {
  int sgl_len = (3 * i) / 2 + (i & 1);

  sgl_len += 3;
  skb_wrs[i] = (sgl_len <= wr_len
         ? 1 : 1 + (sgl_len - 2) / (wr_len - 1));
 }
 wrlen = wr_len * 8;
}
