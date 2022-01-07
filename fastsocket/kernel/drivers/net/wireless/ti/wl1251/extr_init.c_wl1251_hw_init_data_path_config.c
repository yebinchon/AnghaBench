
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int * data_path; } ;
struct acx_data_path_params_resp {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int wl1251_acx_data_path_params (struct wl1251*,int *) ;
 int wl1251_error (char*) ;

__attribute__((used)) static int wl1251_hw_init_data_path_config(struct wl1251 *wl)
{
 int ret;


 wl->data_path = kzalloc(sizeof(struct acx_data_path_params_resp),
    GFP_KERNEL);
 if (!wl->data_path) {
  wl1251_error("Couldnt allocate data path parameters");
  return -ENOMEM;
 }

 ret = wl1251_acx_data_path_params(wl, wl->data_path);
 if (ret < 0) {
  kfree(wl->data_path);
  wl->data_path = ((void*)0);
  return ret;
 }

 return 0;
}
