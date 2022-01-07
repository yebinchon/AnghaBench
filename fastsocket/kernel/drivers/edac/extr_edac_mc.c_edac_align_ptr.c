void *edac_align_ptr(void *ptr, unsigned size)
{
 unsigned align, r;





 if (size > sizeof(long))
  align = sizeof(long long);
 else if (size > sizeof(int))
  align = sizeof(long);
 else if (size > sizeof(short))
  align = sizeof(int);
 else if (size > sizeof(char))
  align = sizeof(short);
 else
  return (char *)ptr;

 r = size % align;

 if (r == 0)
  return (char *)ptr;

 return (void *)(((unsigned long)ptr) + align - r);
}
