
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct of_irq {int size; struct device_node* controller; int specifier; } ;
struct device_node {char* full_name; } ;
typedef int phandle ;


 int EINVAL ;
 int OF_IMAP_NO_PHANDLE ;
 int memcpy (int ,int const*,int) ;
 struct device_node* of_find_node_by_phandle (int ) ;
 struct device_node* of_get_parent (struct device_node*) ;
 int* of_get_property (struct device_node*,char*,int*) ;
 struct device_node* of_irq_dflt_pic ;
 struct device_node* of_irq_find_parent (struct device_node*) ;
 int of_irq_workarounds ;
 struct device_node* of_node_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int pr_debug (char*,...) ;

int of_irq_map_raw(struct device_node *parent, const u32 *intspec, u32 ointsize,
  const u32 *addr, struct of_irq *out_irq)
{
 struct device_node *ipar, *tnode, *old = ((void*)0), *newpar = ((void*)0);
 const u32 *tmp, *imap, *imask;
 u32 intsize = 1, addrsize, newintsize = 0, newaddrsize = 0;
 int imaplen, match, i;

 pr_debug("of_irq_map_raw: par=%s,intspec=[0x%08x 0x%08x...],"
  "ointsize=%d\n",
  parent->full_name, intspec[0], intspec[1], ointsize);

 ipar = of_node_get(parent);





 do {
  tmp = of_get_property(ipar, "#interrupt-cells", ((void*)0));
  if (tmp != ((void*)0)) {
   intsize = *tmp;
   break;
  }
  tnode = ipar;
  ipar = of_irq_find_parent(ipar);
  of_node_put(tnode);
 } while (ipar);
 if (ipar == ((void*)0)) {
  pr_debug(" -> no parent found !\n");
  goto fail;
 }

 pr_debug("of_irq_map_raw: ipar=%s, size=%d\n",
   ipar->full_name, intsize);

 if (ointsize != intsize)
  return -EINVAL;




 old = of_node_get(ipar);
 do {
  tmp = of_get_property(old, "#address-cells", ((void*)0));
  tnode = of_get_parent(old);
  of_node_put(old);
  old = tnode;
 } while (old && tmp == ((void*)0));
 of_node_put(old);
 old = ((void*)0);
 addrsize = (tmp == ((void*)0)) ? 2 : *tmp;

 pr_debug(" -> addrsize=%d\n", addrsize);


 while (ipar != ((void*)0)) {



  if (of_get_property(ipar, "interrupt-controller", ((void*)0)) !=
    ((void*)0)) {
   pr_debug(" -> got it !\n");
   memcpy(out_irq->specifier, intspec,
    intsize * sizeof(u32));
   out_irq->size = intsize;
   out_irq->controller = ipar;
   of_node_put(old);
   return 0;
  }


  imap = of_get_property(ipar, "interrupt-map", &imaplen);

  if (imap == ((void*)0)) {
   pr_debug(" -> no map, getting parent\n");
   newpar = of_irq_find_parent(ipar);
   goto skiplevel;
  }
  imaplen /= sizeof(u32);


  imask = of_get_property(ipar, "interrupt-map-mask", ((void*)0));





  if (addr == ((void*)0) && addrsize != 0) {
   pr_debug(" -> no reg passed in when needed !\n");
   goto fail;
  }


  match = 0;
  while (imaplen > (addrsize + intsize + 1) && !match) {

   match = 1;
   for (i = 0; i < addrsize && match; ++i) {
    u32 mask = imask ? imask[i] : 0xffffffffu;
    match = ((addr[i] ^ imap[i]) & mask) == 0;
   }
   for (; i < (addrsize + intsize) && match; ++i) {
    u32 mask = imask ? imask[i] : 0xffffffffu;
    match =
     ((intspec[i-addrsize] ^ imap[i])
      & mask) == 0;
   }
   imap += addrsize + intsize;
   imaplen -= addrsize + intsize;

   pr_debug(" -> match=%d (imaplen=%d)\n", match, imaplen);


   if (of_irq_workarounds & OF_IMAP_NO_PHANDLE)
    newpar = of_node_get(of_irq_dflt_pic);
   else
    newpar =
     of_find_node_by_phandle((phandle)*imap);
   imap++;
   --imaplen;


   if (newpar == ((void*)0)) {
    pr_debug(" -> imap parent not found !\n");
    goto fail;
   }




   tmp = of_get_property(newpar, "#interrupt-cells", ((void*)0));
   if (tmp == ((void*)0)) {
    pr_debug(" -> parent lacks "
      "#interrupt-cells!\n");
    goto fail;
   }
   newintsize = *tmp;
   tmp = of_get_property(newpar, "#address-cells", ((void*)0));
   newaddrsize = (tmp == ((void*)0)) ? 0 : *tmp;

   pr_debug(" -> newintsize=%d, newaddrsize=%d\n",
    newintsize, newaddrsize);


   if (imaplen < (newaddrsize + newintsize))
    goto fail;

   imap += newaddrsize + newintsize;
   imaplen -= newaddrsize + newintsize;

   pr_debug(" -> imaplen=%d\n", imaplen);
  }
  if (!match)
   goto fail;

  of_node_put(old);
  old = of_node_get(newpar);
  addrsize = newaddrsize;
  intsize = newintsize;
  intspec = imap - intsize;
  addr = intspec - addrsize;

skiplevel:

  pr_debug(" -> new parent: %s\n",
    newpar ? newpar->full_name : "<>");
  of_node_put(ipar);
  ipar = newpar;
  newpar = ((void*)0);
 }
fail:
 of_node_put(ipar);
 of_node_put(old);
 of_node_put(newpar);

 return -EINVAL;
}
