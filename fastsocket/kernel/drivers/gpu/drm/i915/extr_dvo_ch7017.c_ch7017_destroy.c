
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dvo_device {struct ch7017_priv* dev_priv; } ;
struct ch7017_priv {int dummy; } ;


 int kfree (struct ch7017_priv*) ;

__attribute__((used)) static void ch7017_destroy(struct intel_dvo_device *dvo)
{
 struct ch7017_priv *priv = dvo->dev_priv;

 if (priv) {
  kfree(priv);
  dvo->dev_priv = ((void*)0);
 }
}
