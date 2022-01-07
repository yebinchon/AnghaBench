
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aem_idr ;
 int aem_idr_lock ;
 int idr_remove (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void aem_idr_put(int id)
{
 spin_lock(&aem_idr_lock);
 idr_remove(&aem_idr, id);
 spin_unlock(&aem_idr_lock);
}
