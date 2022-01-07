
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ns2501_priv {int dummy; } ;
struct intel_dvo_device {struct ns2501_priv* dev_priv; } ;


 int kfree (struct ns2501_priv*) ;

__attribute__((used)) static void ns2501_destroy(struct intel_dvo_device *dvo)
{
 struct ns2501_priv *ns = dvo->dev_priv;

 if (ns) {
  kfree(ns);
  dvo->dev_priv = ((void*)0);
 }
}
