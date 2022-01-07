
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int recovery; } ;
struct md_rdev {int nr_pending; int flags; } ;


 int Faulty ;
 int MD_RECOVERY_NEEDED ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline void rdev_dec_pending(struct md_rdev *rdev, struct mddev *mddev)
{
 int faulty = test_bit(Faulty, &rdev->flags);
 if (atomic_dec_and_test(&rdev->nr_pending) && faulty)
  set_bit(MD_RECOVERY_NEEDED, &mddev->recovery);
}
