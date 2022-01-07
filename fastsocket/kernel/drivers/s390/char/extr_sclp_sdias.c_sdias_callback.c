
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_req {int dummy; } ;


 int TRACE (char*) ;
 int complete (int *) ;
 int evbuf_accepted ;

__attribute__((used)) static void sdias_callback(struct sclp_req *request, void *data)
{
 complete(&evbuf_accepted);
 TRACE("callback done\n");
}
