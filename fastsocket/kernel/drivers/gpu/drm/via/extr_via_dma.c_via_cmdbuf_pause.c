
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int drm_via_private_t ;


 int HC_HAGPBpID_PAUSE ;
 int via_cmdbuf_flush (int *,int ) ;

__attribute__((used)) static void via_cmdbuf_pause(drm_via_private_t *dev_priv)
{
 via_cmdbuf_flush(dev_priv, HC_HAGPBpID_PAUSE);
}
