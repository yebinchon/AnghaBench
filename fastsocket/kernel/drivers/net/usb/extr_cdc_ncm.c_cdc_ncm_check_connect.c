
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {scalar_t__* data; } ;
struct cdc_ncm_ctx {int connected; } ;



__attribute__((used)) static int cdc_ncm_check_connect(struct usbnet *dev)
{
 struct cdc_ncm_ctx *ctx;

 ctx = (struct cdc_ncm_ctx *)dev->data[0];
 if (ctx == ((void*)0))
  return 1;

 return !ctx->connected;
}
