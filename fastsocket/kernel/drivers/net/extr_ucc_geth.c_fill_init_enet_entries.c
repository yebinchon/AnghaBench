
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct ucc_geth_private {int dummy; } ;


 scalar_t__ ENET_INIT_PARAM_SNUM_SHIFT ;
 int ENOMEM ;
 scalar_t__ IS_ERR_VALUE (scalar_t__) ;
 scalar_t__ netif_msg_ifup (struct ucc_geth_private*) ;
 int qe_get_snum () ;
 scalar_t__ qe_muram_alloc (scalar_t__,scalar_t__) ;
 int qe_put_snum (scalar_t__) ;
 int ugeth_err (char*) ;

__attribute__((used)) static int fill_init_enet_entries(struct ucc_geth_private *ugeth,
      u32 *p_start,
      u8 num_entries,
      u32 thread_size,
      u32 thread_alignment,
      unsigned int risc,
      int skip_page_for_first_entry)
{
 u32 init_enet_offset;
 u8 i;
 int snum;

 for (i = 0; i < num_entries; i++) {
  if ((snum = qe_get_snum()) < 0) {
   if (netif_msg_ifup(ugeth))
    ugeth_err("fill_init_enet_entries: Can not get SNUM.");
   return snum;
  }
  if ((i == 0) && skip_page_for_first_entry)

   init_enet_offset = 0;
  else {
   init_enet_offset =
       qe_muram_alloc(thread_size, thread_alignment);
   if (IS_ERR_VALUE(init_enet_offset)) {
    if (netif_msg_ifup(ugeth))
     ugeth_err("fill_init_enet_entries: Can not allocate DPRAM memory.");
    qe_put_snum((u8) snum);
    return -ENOMEM;
   }
  }
  *(p_start++) =
      ((u8) snum << ENET_INIT_PARAM_SNUM_SHIFT) | init_enet_offset
      | risc;
 }

 return 0;
}
