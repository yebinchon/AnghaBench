
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r3964_info {int dummy; } ;
struct r3964_client_info {struct r3964_block_header* next_block_to_read; int pid; } ;
struct r3964_block_header {scalar_t__ locks; } ;


 int TRACE_PS (char*,int ) ;
 int pid_nr (int ) ;
 int remove_from_rx_queue (struct r3964_info*,struct r3964_block_header*) ;

__attribute__((used)) static void remove_client_block(struct r3964_info *pInfo,
    struct r3964_client_info *pClient)
{
 struct r3964_block_header *block;

 TRACE_PS("remove_client_block PID %d", pid_nr(pClient->pid));

 block = pClient->next_block_to_read;
 if (block) {
  block->locks--;
  if (block->locks == 0) {
   remove_from_rx_queue(pInfo, block);
  }
 }
 pClient->next_block_to_read = ((void*)0);
}
