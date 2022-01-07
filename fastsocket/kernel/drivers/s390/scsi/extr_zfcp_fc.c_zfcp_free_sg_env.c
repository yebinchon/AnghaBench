
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct zfcp_gpn_ft {int sg_resp; struct scatterlist sg_req; } ;
struct TYPE_2__ {int gpn_ft_cache; } ;


 int kfree (struct zfcp_gpn_ft*) ;
 int kmem_cache_free (int ,int ) ;
 int sg_virt (struct scatterlist*) ;
 TYPE_1__ zfcp_data ;
 int zfcp_sg_free_table (int ,int) ;

__attribute__((used)) static void zfcp_free_sg_env(struct zfcp_gpn_ft *gpn_ft, int buf_num)
{
 struct scatterlist *sg = &gpn_ft->sg_req;

 kmem_cache_free(zfcp_data.gpn_ft_cache, sg_virt(sg));
 zfcp_sg_free_table(gpn_ft->sg_resp, buf_num);

 kfree(gpn_ft);
}
