
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_device {int dummy; } ;


 int TAPE390_CRYPT_SUPPORTED (int ) ;
 int TAPE_3590_CRYPT_INFO (struct tape_device*) ;

__attribute__((used)) static int crypt_supported(struct tape_device *device)
{
 return TAPE390_CRYPT_SUPPORTED(TAPE_3590_CRYPT_INFO(device));
}
