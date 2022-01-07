
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queuedata; } ;


 int DAC960_ProcessRequest (int ) ;

__attribute__((used)) static void DAC960_RequestFunction(struct request_queue *RequestQueue)
{
 DAC960_ProcessRequest(RequestQueue->queuedata);
}
