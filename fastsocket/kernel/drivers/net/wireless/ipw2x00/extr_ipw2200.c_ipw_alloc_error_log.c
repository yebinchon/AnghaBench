
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ipw_priv {int config; int status; } ;
struct ipw_fw_error {int elem_len; int log_len; struct ipw_error_elem* elem; struct ipw_event* log; scalar_t__ payload; int config; int status; int jiffies; } ;
struct ipw_event {int dummy; } ;
struct ipw_error_elem {int dummy; } ;
typedef int base ;


 int GFP_ATOMIC ;
 int IPW_ERROR (char*) ;
 int IPW_ERROR_LOG ;
 int ipw_capture_event_log (struct ipw_priv*,int,struct ipw_event*) ;
 int ipw_get_event_log_len (struct ipw_priv*) ;
 int ipw_read32 (struct ipw_priv*,int ) ;
 int ipw_read_indirect (struct ipw_priv*,int,int *,int) ;
 int ipw_read_reg32 (struct ipw_priv*,int) ;
 int jiffies ;
 struct ipw_fw_error* kmalloc (int,int ) ;

__attribute__((used)) static struct ipw_fw_error *ipw_alloc_error_log(struct ipw_priv *priv)
{
 struct ipw_fw_error *error;
 u32 log_len = ipw_get_event_log_len(priv);
 u32 base = ipw_read32(priv, IPW_ERROR_LOG);
 u32 elem_len = ipw_read_reg32(priv, base);

 error = kmalloc(sizeof(*error) +
   sizeof(*error->elem) * elem_len +
   sizeof(*error->log) * log_len, GFP_ATOMIC);
 if (!error) {
  IPW_ERROR("Memory allocation for firmware error log "
     "failed.\n");
  return ((void*)0);
 }
 error->jiffies = jiffies;
 error->status = priv->status;
 error->config = priv->config;
 error->elem_len = elem_len;
 error->log_len = log_len;
 error->elem = (struct ipw_error_elem *)error->payload;
 error->log = (struct ipw_event *)(error->elem + elem_len);

 ipw_capture_event_log(priv, log_len, error->log);

 if (elem_len)
  ipw_read_indirect(priv, base + sizeof(base), (u8 *) error->elem,
      sizeof(*error->elem) * elem_len);

 return error;
}
