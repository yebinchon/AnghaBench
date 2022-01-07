
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_KERNEL ;
 int eth_parse (char*,int*,char**,char**) ;
 int eth_setup_common (char*,int) ;
 int kfree (char*) ;
 char* kstrdup (char*,int ) ;

__attribute__((used)) static int net_config(char *str, char **error_out)
{
 int n, err;

 err = eth_parse(str, &n, &str, error_out);
 if (err)
  return err;




 str = kstrdup(str, GFP_KERNEL);
 if (str == ((void*)0)) {
         *error_out = "net_config failed to strdup string";
  return -ENOMEM;
 }
 err = !eth_setup_common(str, n);
 if (err)
  kfree(str);
 return err;
}
