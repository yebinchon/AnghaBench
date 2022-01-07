
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esp_pio_buffer {struct esp_pio_buffer* next; } ;


 struct esp_pio_buffer* free_pio_buf ;
 int pio_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void release_pio_buffer(struct esp_pio_buffer *buf)
{
 unsigned long flags;
 spin_lock_irqsave(&pio_lock, flags);
 buf->next = free_pio_buf;
 free_pio_buf = buf;
 spin_unlock_irqrestore(&pio_lock, flags);
}
