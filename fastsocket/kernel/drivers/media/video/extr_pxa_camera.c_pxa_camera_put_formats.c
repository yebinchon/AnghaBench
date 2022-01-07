
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_camera_device {int * host_priv; } ;


 int kfree (int *) ;

__attribute__((used)) static void pxa_camera_put_formats(struct soc_camera_device *icd)
{
 kfree(icd->host_priv);
 icd->host_priv = ((void*)0);
}
