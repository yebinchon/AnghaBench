
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsdvb_client_t {int dummy; } ;


 int g_smsdvb_clientslock ;
 int kmutex_lock (int *) ;
 int kmutex_unlock (int *) ;
 int smsdvb_unregister_client (struct smsdvb_client_t*) ;

__attribute__((used)) static void smsdvb_onremove(void *context)
{
 kmutex_lock(&g_smsdvb_clientslock);

 smsdvb_unregister_client((struct smsdvb_client_t *) context);

 kmutex_unlock(&g_smsdvb_clientslock);
}
