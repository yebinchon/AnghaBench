
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int work; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void user_reader_timeout(unsigned long ptr)
{
 struct tpm_chip *chip = (struct tpm_chip *) ptr;

 schedule_work(&chip->work);
}
