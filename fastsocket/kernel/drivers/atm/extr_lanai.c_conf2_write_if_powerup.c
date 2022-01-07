
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lanai_dev {int conf1; } ;


 int CONFIG1_POWERDOWN ;
 int conf2_write (struct lanai_dev const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void conf2_write_if_powerup(const struct lanai_dev *lanai)
{




 conf2_write(lanai);
}
