
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct request_context {int dummy; } ;
struct hermes {struct ezusb_priv* priv; } ;
struct ezusb_priv {int dummy; } ;
typedef int data ;
typedef int __le16 ;


 int ENOMEM ;
 int EZUSB_FRAME_CONTROL ;
 int EZUSB_RID_READ_PDA ;
 int cpu_to_le16 (int) ;
 int ezusb_access_ltv (struct ezusb_priv*,struct request_context*,int,int **,int ,int *,int,int *) ;
 struct request_context* ezusb_alloc_ctx (struct ezusb_priv*,int ,int ) ;

__attribute__((used)) static int ezusb_read_pda(struct hermes *hw, __le16 *pda,
     u32 pda_addr, u16 pda_len)
{
 struct ezusb_priv *upriv = hw->priv;
 struct request_context *ctx;
 __le16 data[] = {
  cpu_to_le16(pda_addr & 0xffff),
  cpu_to_le16(pda_len - 4)
 };
 ctx = ezusb_alloc_ctx(upriv, EZUSB_RID_READ_PDA, EZUSB_RID_READ_PDA);
 if (!ctx)
  return -ENOMEM;




 pda[0] = cpu_to_le16(pda_len - 2);

 pda[1] = cpu_to_le16(0x0800);

 return ezusb_access_ltv(upriv, ctx, sizeof(data), &data,
    EZUSB_FRAME_CONTROL, &pda[2], pda_len - 4,
    ((void*)0));
}
