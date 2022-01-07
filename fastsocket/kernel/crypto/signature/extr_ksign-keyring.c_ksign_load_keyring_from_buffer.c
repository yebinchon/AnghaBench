
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int add_keyblock_key ;
 int add_keyblock_uid ;
 int ksign_parse_packets (int const*,size_t,int *,int ,int ,int *) ;
 int printk (char*) ;

int ksign_load_keyring_from_buffer(const void *buffer, size_t size)
{
    printk("Loading keyring\n");

    return ksign_parse_packets((const uint8_t *) buffer,
          size,
          ((void*)0),
          add_keyblock_key,
          add_keyblock_uid,
          ((void*)0));
}
