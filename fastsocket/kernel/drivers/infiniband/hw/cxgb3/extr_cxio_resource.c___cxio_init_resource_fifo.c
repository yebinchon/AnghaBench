
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kfifo {int dummy; } ;
typedef int spinlock_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct kfifo*) ;
 int RANDOM_SIZE ;
 int __kfifo_put (struct kfifo*,unsigned char*,int) ;
 struct kfifo* kfifo_alloc (int,int ,int *) ;
 int kfifo_get (struct kfifo*,unsigned char*,int) ;
 int random32 () ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int __cxio_init_resource_fifo(struct kfifo **fifo,
       spinlock_t *fifo_lock,
       u32 nr, u32 skip_low,
       u32 skip_high,
       int random)
{
 u32 i, j, entry = 0, idx;
 u32 random_bytes;
 u32 rarray[16];
 spin_lock_init(fifo_lock);

 *fifo = kfifo_alloc(nr * sizeof(u32), GFP_KERNEL, fifo_lock);
 if (IS_ERR(*fifo))
  return -ENOMEM;

 for (i = 0; i < skip_low + skip_high; i++)
  __kfifo_put(*fifo, (unsigned char *) &entry, sizeof(u32));
 if (random) {
  j = 0;
  random_bytes = random32();
  for (i = 0; i < RANDOM_SIZE; i++)
   rarray[i] = i + skip_low;
  for (i = skip_low + RANDOM_SIZE; i < nr - skip_high; i++) {
   if (j >= RANDOM_SIZE) {
    j = 0;
    random_bytes = random32();
   }
   idx = (random_bytes >> (j * 2)) & 0xF;
   __kfifo_put(*fifo,
    (unsigned char *) &rarray[idx],
    sizeof(u32));
   rarray[idx] = i;
   j++;
  }
  for (i = 0; i < RANDOM_SIZE; i++)
   __kfifo_put(*fifo,
    (unsigned char *) &rarray[i],
    sizeof(u32));
 } else
  for (i = skip_low; i < nr - skip_high; i++)
   __kfifo_put(*fifo, (unsigned char *) &i, sizeof(u32));

 for (i = 0; i < skip_low + skip_high; i++)
  kfifo_get(*fifo, (unsigned char *) &entry, sizeof(u32));
 return 0;
}
