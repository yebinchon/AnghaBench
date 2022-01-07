
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_device {int dev_id; } ;


 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_idr ;
 int dma_list_mutex ;
 int idr_get_new (int *,int *,int *) ;
 int idr_pre_get (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int get_dma_id(struct dma_device *device)
{
 int rc;

 idr_retry:
 if (!idr_pre_get(&dma_idr, GFP_KERNEL))
  return -ENOMEM;
 mutex_lock(&dma_list_mutex);
 rc = idr_get_new(&dma_idr, ((void*)0), &device->dev_id);
 mutex_unlock(&dma_list_mutex);
 if (rc == -EAGAIN)
  goto idr_retry;
 else if (rc != 0)
  return rc;

 return 0;
}
