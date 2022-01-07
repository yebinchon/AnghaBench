
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lcs_card {int tx_emitted; TYPE_1__* tx_buffer; int write; } ;
typedef scalar_t__ __u16 ;
struct TYPE_2__ {scalar_t__ count; scalar_t__ data; } ;


 int LCS_DBF_TEXT (int,int ,char*) ;
 int lcs_ready_buffer (int *,TYPE_1__*) ;
 int trace ;

__attribute__((used)) static void
__lcs_emit_txbuffer(struct lcs_card *card)
{
 LCS_DBF_TEXT(5, trace, "emittx");
 *(__u16 *)(card->tx_buffer->data + card->tx_buffer->count) = 0;
 card->tx_buffer->count += 2;
 lcs_ready_buffer(&card->write, card->tx_buffer);
 card->tx_buffer = ((void*)0);
 card->tx_emitted++;
}
