
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinfo {scalar_t__ freeswap; scalar_t__ totalswap; scalar_t__ bufferram; scalar_t__ freehigh; scalar_t__ totalhigh; scalar_t__ freeram; scalar_t__ totalram; int sharedram; } ;
struct appldata_mem_data {unsigned long pgpgin; unsigned long pgpgout; unsigned long pswpin; unsigned long pswpout; unsigned long pgalloc; unsigned long pgfault; unsigned long pgmajfault; int sync_count_2; int timestamp; void* freeswap; void* totalswap; void* cached; void* bufferram; void* freehigh; void* totalhigh; void* freeram; void* totalram; int sharedram; int sync_count_1; } ;


 int NR_FILE_PAGES ;
 int NR_VM_EVENT_ITEMS ;
 void* P2K (scalar_t__) ;
 size_t PGALLOC_DMA ;
 size_t PGALLOC_NORMAL ;
 size_t PGFAULT ;
 size_t PGMAJFAULT ;
 size_t PGPGIN ;
 size_t PGPGOUT ;
 size_t PSWPIN ;
 size_t PSWPOUT ;
 int all_vm_events (unsigned long*) ;
 int get_clock () ;
 scalar_t__ global_page_state (int ) ;
 int si_meminfo (struct sysinfo*) ;
 int si_swapinfo (struct sysinfo*) ;

__attribute__((used)) static void appldata_get_mem_data(void *data)
{




 static struct sysinfo val;
 unsigned long ev[NR_VM_EVENT_ITEMS];
 struct appldata_mem_data *mem_data;

 mem_data = data;
 mem_data->sync_count_1++;

 all_vm_events(ev);
 mem_data->pgpgin = ev[PGPGIN] >> 1;
 mem_data->pgpgout = ev[PGPGOUT] >> 1;
 mem_data->pswpin = ev[PSWPIN];
 mem_data->pswpout = ev[PSWPOUT];
 mem_data->pgalloc = ev[PGALLOC_NORMAL];



 mem_data->pgfault = ev[PGFAULT];
 mem_data->pgmajfault = ev[PGMAJFAULT];

 si_meminfo(&val);
 mem_data->sharedram = val.sharedram;
 mem_data->totalram = P2K(val.totalram);
 mem_data->freeram = P2K(val.freeram);
 mem_data->totalhigh = P2K(val.totalhigh);
 mem_data->freehigh = P2K(val.freehigh);
 mem_data->bufferram = P2K(val.bufferram);
 mem_data->cached = P2K(global_page_state(NR_FILE_PAGES)
    - val.bufferram);

 si_swapinfo(&val);
 mem_data->totalswap = P2K(val.totalswap);
 mem_data->freeswap = P2K(val.freeswap);

 mem_data->timestamp = get_clock();
 mem_data->sync_count_2++;
}
