
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct seq_file {int dummy; } ;


 int PCXL_DMA_MAP_SIZE ;
 int buf ;
 scalar_t__ pcxl_res_map ;
 int pcxl_res_size ;
 int pcxl_used_bytes ;
 unsigned long pcxl_used_pages ;
 int seq_printf (struct seq_file*,char*,int,...) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int proc_pcxl_dma_show(struct seq_file *m, void *v)
{




 unsigned long total_pages = pcxl_res_size << 3;

 seq_printf(m, "\nDMA Mapping Area size    : %d bytes (%ld pages)\n",
  PCXL_DMA_MAP_SIZE, total_pages);

 seq_printf(m, "Resource bitmap : %d bytes\n", pcxl_res_size);

 seq_puts(m, "     	  total:    free:    used:   % used:\n");
 seq_printf(m, "blocks  %8d %8ld %8ld %8ld%%\n", pcxl_res_size,
  pcxl_res_size - pcxl_used_bytes, pcxl_used_bytes,
  (pcxl_used_bytes * 100) / pcxl_res_size);

 seq_printf(m, "pages   %8ld %8ld %8ld %8ld%%\n", total_pages,
  total_pages - pcxl_used_pages, pcxl_used_pages,
  (pcxl_used_pages * 100 / total_pages));
 seq_putc(m, '\n');
 return 0;
}
