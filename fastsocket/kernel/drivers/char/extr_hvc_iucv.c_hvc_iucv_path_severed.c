
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iucv_path {struct hvc_iucv_private* private; } ;
struct hvc_iucv_private {int dummy; } ;


 int hvc_iucv_hangup (struct hvc_iucv_private*) ;

__attribute__((used)) static void hvc_iucv_path_severed(struct iucv_path *path, u8 ipuser[16])
{
 struct hvc_iucv_private *priv = path->private;

 hvc_iucv_hangup(priv);
}
