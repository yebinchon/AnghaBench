
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct port_info {int in_end; int in_start; int * in_buf; } ;


 int EINVAL ;
 size_t VTTY_PORTS ;
 int consolelock ;
 int memcpy (char*,int *,int) ;
 struct port_info* port_info ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int get_chars(uint32_t vtermno, char *buf, int count)
{
 struct port_info *pi;
 int n = 0;
 unsigned long flags;

 if (vtermno >= VTTY_PORTS)
  return -EINVAL;
 if (count == 0)
  return 0;

 pi = &port_info[vtermno];
 spin_lock_irqsave(&consolelock, flags);

 if (pi->in_end == 0)
  goto done;

 n = pi->in_end - pi->in_start;
 if (n > count)
  n = count;
 memcpy(buf, &pi->in_buf[pi->in_start], n);
 pi->in_start += n;
 if (pi->in_start == pi->in_end) {
  pi->in_start = 0;
  pi->in_end = 0;
 }
done:
 spin_unlock_irqrestore(&consolelock, flags);
 return n;
}
