
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct t4_sq {size_t size; int * queue; } ;
struct ib_send_wr {int num_sge; TYPE_1__* sg_list; } ;
struct fw_ri_immd {int immdlen; scalar_t__ r2; scalar_t__ r1; int op; scalar_t__ data; } ;
struct TYPE_2__ {int length; scalar_t__ addr; } ;


 int EMSGSIZE ;
 int FW_RI_DATA_IMMD ;
 int cpu_to_be32 (int) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int roundup (int,int) ;

__attribute__((used)) static int build_immd(struct t4_sq *sq, struct fw_ri_immd *immdp,
        struct ib_send_wr *wr, int max, u32 *plenp)
{
 u8 *dstp, *srcp;
 u32 plen = 0;
 int i;
 int rem, len;

 dstp = (u8 *)immdp->data;
 for (i = 0; i < wr->num_sge; i++) {
  if ((plen + wr->sg_list[i].length) > max)
   return -EMSGSIZE;
  srcp = (u8 *)(unsigned long)wr->sg_list[i].addr;
  plen += wr->sg_list[i].length;
  rem = wr->sg_list[i].length;
  while (rem) {
   if (dstp == (u8 *)&sq->queue[sq->size])
    dstp = (u8 *)sq->queue;
   if (rem <= (u8 *)&sq->queue[sq->size] - dstp)
    len = rem;
   else
    len = (u8 *)&sq->queue[sq->size] - dstp;
   memcpy(dstp, srcp, len);
   dstp += len;
   srcp += len;
   rem -= len;
  }
 }
 len = roundup(plen + sizeof *immdp, 16) - (plen + sizeof *immdp);
 if (len)
  memset(dstp, 0, len);
 immdp->op = FW_RI_DATA_IMMD;
 immdp->r1 = 0;
 immdp->r2 = 0;
 immdp->immdlen = cpu_to_be32(plen);
 *plenp = plen;
 return 0;
}
