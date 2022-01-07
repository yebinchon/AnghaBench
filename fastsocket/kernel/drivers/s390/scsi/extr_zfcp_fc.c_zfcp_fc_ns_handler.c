
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_fc_ns_handler_data {int done; int handler_data; int (* handler ) (int ) ;} ;


 int complete (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static void zfcp_fc_ns_handler(unsigned long data)
{
 struct zfcp_fc_ns_handler_data *compl_rec =
   (struct zfcp_fc_ns_handler_data *) data;

 if (compl_rec->handler)
  compl_rec->handler(compl_rec->handler_data);

 complete(&compl_rec->done);
}
