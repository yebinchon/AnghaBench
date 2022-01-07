
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_gpn_ft {int sg_resp; int sg_req; } ;
struct ct_iu_gpn_ft_req {int dummy; } ;
struct TYPE_2__ {int gpn_ft_cache; } ;


 int GFP_KERNEL ;
 int kfree (struct zfcp_gpn_ft*) ;
 struct ct_iu_gpn_ft_req* kmem_cache_zalloc (int ,int ) ;
 struct zfcp_gpn_ft* kzalloc (int,int ) ;
 int sg_init_one (int *,struct ct_iu_gpn_ft_req*,int) ;
 TYPE_1__ zfcp_data ;
 int zfcp_free_sg_env (struct zfcp_gpn_ft*,int) ;
 scalar_t__ zfcp_sg_setup_table (int ,int) ;

__attribute__((used)) static struct zfcp_gpn_ft *zfcp_alloc_sg_env(int buf_num)
{
 struct zfcp_gpn_ft *gpn_ft;
 struct ct_iu_gpn_ft_req *req;

 gpn_ft = kzalloc(sizeof(*gpn_ft), GFP_KERNEL);
 if (!gpn_ft)
  return ((void*)0);

 req = kmem_cache_zalloc(zfcp_data.gpn_ft_cache, GFP_KERNEL);
 if (!req) {
  kfree(gpn_ft);
  gpn_ft = ((void*)0);
  goto out;
 }
 sg_init_one(&gpn_ft->sg_req, req, sizeof(*req));

 if (zfcp_sg_setup_table(gpn_ft->sg_resp, buf_num)) {
  zfcp_free_sg_env(gpn_ft, buf_num);
  gpn_ft = ((void*)0);
 }
out:
 return gpn_ft;
}
