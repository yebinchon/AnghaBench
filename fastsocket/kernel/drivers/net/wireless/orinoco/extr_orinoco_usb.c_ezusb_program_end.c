
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_context {int dummy; } ;
struct hermes {struct ezusb_priv* priv; } ;
struct ezusb_priv {int dummy; } ;


 int ENOMEM ;
 int EZUSB_FRAME_CONTROL ;
 int EZUSB_RID_ACK ;
 int EZUSB_RID_PROG_END ;
 int ezusb_access_ltv (struct ezusb_priv*,struct request_context*,int ,int *,int ,int *,int ,int *) ;
 struct request_context* ezusb_alloc_ctx (struct ezusb_priv*,int ,int ) ;

__attribute__((used)) static int ezusb_program_end(struct hermes *hw)
{
 struct ezusb_priv *upriv = hw->priv;
 struct request_context *ctx;

 ctx = ezusb_alloc_ctx(upriv, EZUSB_RID_PROG_END, EZUSB_RID_ACK);
 if (!ctx)
  return -ENOMEM;

 return ezusb_access_ltv(upriv, ctx, 0, ((void*)0),
    EZUSB_FRAME_CONTROL, ((void*)0), 0, ((void*)0));
}
