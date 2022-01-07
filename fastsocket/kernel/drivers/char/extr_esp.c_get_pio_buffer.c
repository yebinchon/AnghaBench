
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esp_pio_buffer {struct esp_pio_buffer* next; } ;


 int GFP_ATOMIC ;
 struct esp_pio_buffer* free_pio_buf ;
 struct esp_pio_buffer* kmalloc (int,int ) ;
 int pio_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline struct esp_pio_buffer *get_pio_buffer(void)
{
 struct esp_pio_buffer *buf;
 unsigned long flags;

 spin_lock_irqsave(&pio_lock, flags);
 if (free_pio_buf) {
  buf = free_pio_buf;
  free_pio_buf = buf->next;
 } else {
  buf = kmalloc(sizeof(struct esp_pio_buffer), GFP_ATOMIC);
 }
 spin_unlock_irqrestore(&pio_lock, flags);
 return buf;
}
