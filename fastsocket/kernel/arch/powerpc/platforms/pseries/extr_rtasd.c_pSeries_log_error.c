
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ERR_FLAG_BOOT ;

 unsigned int ERR_TYPE_MASK ;

 int LOG_NUMBER ;
 int LOG_NUMBER_MASK ;
 int WARN_ON_ONCE (int) ;
 int error_log_cnt ;
 int irqs_disabled () ;
 int log_rtas_len (char*) ;
 scalar_t__ logging_enabled ;
 int memcpy (int *,char*,int) ;
 int nvram_write_error_log (char*,int,unsigned int,int ) ;
 int pr_debug (char*) ;
 int printk_log_rtas (char*,int) ;
 int rtas_error_log_buffer_max ;
 int * rtas_log_buf ;
 int rtas_log_size ;
 int rtas_log_start ;
 int rtas_log_wait ;
 int rtasd_log_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

void pSeries_log_error(char *buf, unsigned int err_type, int fatal)
{
 unsigned long offset;
 unsigned long s;
 int len = 0;

 pr_debug("rtasd: logging event\n");
 if (buf == ((void*)0))
  return;

 spin_lock_irqsave(&rtasd_log_lock, s);


 switch (err_type & ERR_TYPE_MASK) {
 case 128:
  len = log_rtas_len(buf);
  if (!(err_type & ERR_FLAG_BOOT))
   error_log_cnt++;
  break;
 case 129:
 default:
  WARN_ON_ONCE(!irqs_disabled());
  spin_unlock_irqrestore(&rtasd_log_lock, s);
  return;
 }


 if (logging_enabled && !(err_type & ERR_FLAG_BOOT))
  nvram_write_error_log(buf, len, err_type, error_log_cnt);






 if ((err_type & ERR_TYPE_MASK) == 128)
  printk_log_rtas(buf, len);


 if (fatal || !logging_enabled) {
  logging_enabled = 0;
  WARN_ON_ONCE(!irqs_disabled());
  spin_unlock_irqrestore(&rtasd_log_lock, s);
  return;
 }


 switch (err_type & ERR_TYPE_MASK) {
 case 128:
  offset = rtas_error_log_buffer_max *
   ((rtas_log_start+rtas_log_size) & LOG_NUMBER_MASK);


  memcpy(&rtas_log_buf[offset], (void *) &error_log_cnt, sizeof(int));


  offset += sizeof(int);
  memcpy(&rtas_log_buf[offset], buf, len);

  if (rtas_log_size < LOG_NUMBER)
   rtas_log_size += 1;
  else
   rtas_log_start += 1;

  WARN_ON_ONCE(!irqs_disabled());
  spin_unlock_irqrestore(&rtasd_log_lock, s);
  wake_up_interruptible(&rtas_log_wait);
  break;
 case 129:
 default:
  WARN_ON_ONCE(!irqs_disabled());
  spin_unlock_irqrestore(&rtasd_log_lock, s);
  return;
 }

}
