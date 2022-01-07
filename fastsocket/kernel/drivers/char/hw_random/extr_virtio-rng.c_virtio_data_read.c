
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hwrng {int dummy; } ;


 int BUG_ON (int) ;
 int data_left ;
 int have_data ;
 int init_completion (int *) ;
 int * random_data ;
 int register_buffer () ;

__attribute__((used)) static int virtio_data_read(struct hwrng *rng, u32 *data)
{
 BUG_ON(data_left < sizeof(u32));
 data_left -= sizeof(u32);
 *data = random_data[data_left / 4];

 if (data_left < sizeof(u32)) {
  init_completion(&have_data);
  register_buffer();
 }
 return sizeof(*data);
}
