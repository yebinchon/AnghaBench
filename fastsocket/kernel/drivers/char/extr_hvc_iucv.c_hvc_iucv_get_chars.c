
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hvc_iucv_private {int lock; } ;


 int ENODEV ;
 struct hvc_iucv_private* hvc_iucv_get_private (int ) ;
 int hvc_iucv_write (struct hvc_iucv_private*,char*,int,int*) ;
 int hvc_kick () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int hvc_iucv_get_chars(uint32_t vtermno, char *buf, int count)
{
 struct hvc_iucv_private *priv = hvc_iucv_get_private(vtermno);
 int written;
 int has_more_data;

 if (count <= 0)
  return 0;

 if (!priv)
  return -ENODEV;

 spin_lock(&priv->lock);
 has_more_data = 0;
 written = hvc_iucv_write(priv, buf, count, &has_more_data);
 spin_unlock(&priv->lock);


 if (has_more_data)
  hvc_kick();

 return written;
}
