
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ bte_result_t ;


 scalar_t__ BTEFAIL_NOTAVAIL ;
 scalar_t__ BTE_SUCCESS ;
 int GFP_KERNEL ;
 int L1_CACHE_ALIGN (int) ;
 int L1_CACHE_BYTES ;
 int L1_CACHE_MASK ;
 int __va (int) ;
 scalar_t__ bte_copy (int,int,int,int,int *) ;
 int ia64_tpa (unsigned long) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int memcpy (int ,char*,int) ;

bte_result_t bte_unaligned_copy(u64 src, u64 dest, u64 len, u64 mode)
{
 int destFirstCacheOffset;
 u64 headBteSource;
 u64 headBteLen;
 u64 headBcopySrcOffset;
 u64 headBcopyDest;
 u64 headBcopyLen;
 u64 footBteSource;
 u64 footBteLen;
 u64 footBcopyDest;
 u64 footBcopyLen;
 bte_result_t rv;
 char *bteBlock, *bteBlock_unaligned;

 if (len == 0) {
  return BTE_SUCCESS;
 }


 bteBlock_unaligned = kmalloc(len + 3 * L1_CACHE_BYTES, GFP_KERNEL);
 if (bteBlock_unaligned == ((void*)0)) {
  return BTEFAIL_NOTAVAIL;
 }
 bteBlock = (char *)L1_CACHE_ALIGN((u64) bteBlock_unaligned);

 headBcopySrcOffset = src & L1_CACHE_MASK;
 destFirstCacheOffset = dest & L1_CACHE_MASK;
 if (headBcopySrcOffset == destFirstCacheOffset) {







  headBteSource = src & ~L1_CACHE_MASK;
  headBcopyDest = dest;
  if (headBcopySrcOffset) {
   headBcopyLen =
       (len >
        (L1_CACHE_BYTES -
         headBcopySrcOffset) ? L1_CACHE_BYTES
        - headBcopySrcOffset : len);
   headBteLen = L1_CACHE_BYTES;
  } else {
   headBcopyLen = 0;
   headBteLen = 0;
  }

  if (len > headBcopyLen) {
   footBcopyLen = (len - headBcopyLen) & L1_CACHE_MASK;
   footBteLen = L1_CACHE_BYTES;

   footBteSource = src + len - footBcopyLen;
   footBcopyDest = dest + len - footBcopyLen;

   if (footBcopyDest == (headBcopyDest + headBcopyLen)) {




    headBcopyLen += footBcopyLen;
    headBteLen += footBteLen;
   } else if (footBcopyLen > 0) {
    rv = bte_copy(footBteSource,
           ia64_tpa((unsigned long)bteBlock),
           footBteLen, mode, ((void*)0));
    if (rv != BTE_SUCCESS) {
     kfree(bteBlock_unaligned);
     return rv;
    }

    memcpy(__va(footBcopyDest),
           (char *)bteBlock, footBcopyLen);
   }
  } else {
   footBcopyLen = 0;
   footBteLen = 0;
  }

  if (len > (headBcopyLen + footBcopyLen)) {

   rv = bte_copy((src + headBcopyLen),
          (dest +
           headBcopyLen),
          (len - headBcopyLen -
           footBcopyLen), mode, ((void*)0));
   if (rv != BTE_SUCCESS) {
    kfree(bteBlock_unaligned);
    return rv;
   }

  }
 } else {
  headBcopySrcOffset = src & L1_CACHE_MASK;
  headBcopyDest = dest;
  headBcopyLen = len;

  headBteSource = src - headBcopySrcOffset;

  headBteLen = L1_CACHE_ALIGN(len + headBcopySrcOffset);
 }

 if (headBcopyLen > 0) {
  rv = bte_copy(headBteSource,
         ia64_tpa((unsigned long)bteBlock), headBteLen,
         mode, ((void*)0));
  if (rv != BTE_SUCCESS) {
   kfree(bteBlock_unaligned);
   return rv;
  }

  memcpy(__va(headBcopyDest), ((char *)bteBlock +
          headBcopySrcOffset), headBcopyLen);
 }
 kfree(bteBlock_unaligned);
 return BTE_SUCCESS;
}
