
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_req {scalar_t__ sccb; } ;


 int free_page (unsigned long) ;
 int kfree (struct sclp_req*) ;

__attribute__((used)) static void cpi_free_req(struct sclp_req *req)
{
 free_page((unsigned long) req->sccb);
 kfree(req);
}
