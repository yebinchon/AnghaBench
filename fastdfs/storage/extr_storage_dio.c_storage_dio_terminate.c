
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct storage_dio_context {int queue; } ;


 int blocked_queue_terminate (int *) ;
 struct storage_dio_context* g_dio_contexts ;
 int g_dio_thread_count ;

void storage_dio_terminate()
{
 struct storage_dio_context *pContext;
 struct storage_dio_context *pContextEnd;

 pContextEnd = g_dio_contexts + g_dio_thread_count;
 for (pContext=g_dio_contexts; pContext<pContextEnd; pContext++)
 {
  blocked_queue_terminate(&(pContext->queue));
 }
}
