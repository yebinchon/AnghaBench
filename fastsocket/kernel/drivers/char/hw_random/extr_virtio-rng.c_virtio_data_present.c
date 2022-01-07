
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hwrng {int dummy; } ;


 int data_left ;
 int have_data ;
 int register_buffer () ;
 scalar_t__ unlikely (int) ;
 int wait_for_completion_killable (int *) ;

__attribute__((used)) static int virtio_data_present(struct hwrng *rng, int wait)
{
 int ret;

 if (data_left >= sizeof(u32))
  return 1;

again:
 if (!wait)
  return 0;

 ret = wait_for_completion_killable(&have_data);
 if (ret < 0)
  return ret;


 if (unlikely(data_left < sizeof(u32))) {
  register_buffer();
  goto again;
 }

 return 1;
}
