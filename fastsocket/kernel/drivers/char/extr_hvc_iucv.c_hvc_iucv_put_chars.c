
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hvc_iucv_private {int lock; } ;


 int ENODEV ;
 struct hvc_iucv_private* hvc_iucv_get_private (int ) ;
 int hvc_iucv_queue (struct hvc_iucv_private*,char const*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int hvc_iucv_put_chars(uint32_t vtermno, const char *buf, int count)
{
 struct hvc_iucv_private *priv = hvc_iucv_get_private(vtermno);
 int queued;

 if (count <= 0)
  return 0;

 if (!priv)
  return -ENODEV;

 spin_lock(&priv->lock);
 queued = hvc_iucv_queue(priv, buf, count);
 spin_unlock(&priv->lock);

 return queued;
}
