
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_vf {int status_lock; scalar_t__ status_addr; } ;


 int VFDI_RC_SUCCESS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int efx_vfdi_clear_status_page(struct efx_vf *vf)
{
 mutex_lock(&vf->status_lock);
 vf->status_addr = 0;
 mutex_unlock(&vf->status_lock);

 return VFDI_RC_SUCCESS;
}
