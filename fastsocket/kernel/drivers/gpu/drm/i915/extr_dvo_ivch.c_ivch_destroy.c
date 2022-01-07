
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivch_priv {int dummy; } ;
struct intel_dvo_device {struct ivch_priv* dev_priv; } ;


 int kfree (struct ivch_priv*) ;

__attribute__((used)) static void ivch_destroy(struct intel_dvo_device *dvo)
{
 struct ivch_priv *priv = dvo->dev_priv;

 if (priv) {
  kfree(priv);
  dvo->dev_priv = ((void*)0);
 }
}
