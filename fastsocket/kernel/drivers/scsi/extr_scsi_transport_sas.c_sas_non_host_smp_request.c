
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_rphy {int dummy; } ;
struct request_queue {struct sas_rphy* queuedata; } ;


 int rphy_to_shost (struct sas_rphy*) ;
 int sas_smp_request (struct request_queue*,int ,struct sas_rphy*) ;

__attribute__((used)) static void sas_non_host_smp_request(struct request_queue *q)
{
 struct sas_rphy *rphy = q->queuedata;
 sas_smp_request(q, rphy_to_shost(rphy), rphy);
}
