
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int pages_per_block_bits; } ;
typedef enum data_mode { ____Placeholder_data_mode } data_mode ;


 int BUG () ;



 int DMCRIT (char*,int) ;
 int DM_BUFIO_CACHE (struct dm_bufio_client*) ;
 int free_pages (unsigned long,int ) ;
 int kmem_cache_free (int ,void*) ;
 int vfree (void*) ;

__attribute__((used)) static void free_buffer_data(struct dm_bufio_client *c,
        void *data, enum data_mode data_mode)
{
 switch (data_mode) {
 case 129:
  kmem_cache_free(DM_BUFIO_CACHE(c), data);
  break;

 case 130:
  free_pages((unsigned long)data, c->pages_per_block_bits);
  break;

 case 128:
  vfree(data);
  break;

 default:
  DMCRIT("dm_bufio_free_buffer_data: bad data mode: %d",
         data_mode);
  BUG();
 }
}
