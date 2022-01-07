
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_chunk {int dummy; } ;


 int MEMORY_CHUNKS ;
 int memmove (struct mem_chunk*,struct mem_chunk*,int) ;

__attribute__((used)) static void mem_chunk_move(struct mem_chunk chunk[], int to, int from)
{
 int cnt = MEMORY_CHUNKS - to;

 memmove(&chunk[to], &chunk[from], cnt * sizeof(struct mem_chunk));
}
