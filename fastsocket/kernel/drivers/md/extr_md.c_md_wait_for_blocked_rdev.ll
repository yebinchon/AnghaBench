; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_md_wait_for_blocked_rdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_md_wait_for_blocked_rdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i32, i32, i32 }
%struct.mddev = type { i32 }

@Blocked = common dso_local global i32 0, align 4
@BlockedBadBlocks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_wait_for_blocked_rdev(%struct.md_rdev* %0, %struct.mddev* %1) #0 {
  %3 = alloca %struct.md_rdev*, align 8
  %4 = alloca %struct.mddev*, align 8
  store %struct.md_rdev* %0, %struct.md_rdev** %3, align 8
  store %struct.mddev* %1, %struct.mddev** %4, align 8
  %5 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %6 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @sysfs_notify_dirent_safe(i32 %7)
  %9 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %10 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @Blocked, align 4
  %13 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %14 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %13, i32 0, i32 0
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @BlockedBadBlocks, align 4
  %19 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %20 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %19, i32 0, i32 0
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %17, %2
  %25 = phi i1 [ false, %2 ], [ %23, %17 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @msecs_to_jiffies(i32 5000)
  %28 = call i32 @wait_event_timeout(i32 %11, i32 %26, i32 %27)
  %29 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %30 = load %struct.mddev*, %struct.mddev** %4, align 8
  %31 = call i32 @rdev_dec_pending(%struct.md_rdev* %29, %struct.mddev* %30)
  ret void
}

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, %struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
