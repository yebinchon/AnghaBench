
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct request_context {int dummy; } ;
struct hermes {struct ezusb_priv* priv; } ;
struct ezusb_priv {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int EZUSB_FRAME_CONTROL ;
 int EZUSB_FRAME_DATA ;
 int EZUSB_RID_ACK ;
 int EZUSB_RID_TX ;
 int HERMES_RECLEN_TO_BYTES (int ) ;
 int ezusb_access_ltv (struct ezusb_priv*,struct request_context*,int ,void const*,int ,int *,int ,int *) ;
 struct request_context* ezusb_alloc_ctx (struct ezusb_priv*,int ,int ) ;

__attribute__((used)) static int ezusb_write_ltv(struct hermes *hw, int bap, u16 rid,
      u16 length, const void *data)
{
 struct ezusb_priv *upriv = hw->priv;
 u16 frame_type;
 struct request_context *ctx;

 if (length == 0)
  return -EINVAL;

 length = HERMES_RECLEN_TO_BYTES(length);



 if (length == 0)
  return 0;

 ctx = ezusb_alloc_ctx(upriv, rid, EZUSB_RID_ACK);
 if (!ctx)
  return -ENOMEM;

 if (rid == EZUSB_RID_TX)
  frame_type = EZUSB_FRAME_DATA;
 else
  frame_type = EZUSB_FRAME_CONTROL;

 return ezusb_access_ltv(upriv, ctx, length, data, frame_type,
    ((void*)0), 0, ((void*)0));
}
