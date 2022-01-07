
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_template {int dummy; } ;


 int __crypto_lookup_template (char const*) ;
 struct crypto_template* try_then_request_module (int ,char const*) ;

struct crypto_template *crypto_lookup_template(const char *name)
{
 return try_then_request_module(__crypto_lookup_template(name), name);
}
