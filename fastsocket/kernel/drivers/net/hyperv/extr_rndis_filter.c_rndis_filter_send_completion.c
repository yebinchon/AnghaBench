
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rndis_filter_packet {int completion_ctx; int (* completion ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static void rndis_filter_send_completion(void *ctx)
{
 struct rndis_filter_packet *filter_pkt = ctx;


 filter_pkt->completion(filter_pkt->completion_ctx);
}
