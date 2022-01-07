
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int content_type_hash; scalar_t__ support_multi_range; scalar_t__ need_find_content_type; } ;
typedef TYPE_1__ FDFSHTTPParams ;


 int hash_destroy (int *) ;

void fdfs_http_params_destroy(FDFSHTTPParams *pParams)
{
 if (!(pParams->need_find_content_type || pParams->support_multi_range))
 {
  hash_destroy(&pParams->content_type_hash);
 }
}
