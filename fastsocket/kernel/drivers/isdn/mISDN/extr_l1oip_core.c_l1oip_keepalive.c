
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l1oip {int workq; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void
l1oip_keepalive(void *data)
{
 struct l1oip *hc = (struct l1oip *)data;

 schedule_work(&hc->workq);
}
