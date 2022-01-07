; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_do_unplug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_do_unplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { %struct.raid_dev*, %struct.TYPE_3__ }
%struct.raid_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raid_set*)* @do_unplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_unplug(%struct.raid_set* %0) #0 {
  %2 = alloca %struct.raid_set*, align 8
  %3 = alloca %struct.raid_dev*, align 8
  store %struct.raid_set* %0, %struct.raid_set** %2, align 8
  %4 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %5 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %4, i32 0, i32 0
  %6 = load %struct.raid_dev*, %struct.raid_dev** %5, align 8
  %7 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %8 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.raid_dev, %struct.raid_dev* %6, i64 %11
  store %struct.raid_dev* %12, %struct.raid_dev** %3, align 8
  br label %13

13:                                               ; preds = %32, %1
  %14 = load %struct.raid_dev*, %struct.raid_dev** %3, align 8
  %15 = getelementptr inbounds %struct.raid_dev, %struct.raid_dev* %14, i32 -1
  store %struct.raid_dev* %15, %struct.raid_dev** %3, align 8
  %16 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %17 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %16, i32 0, i32 0
  %18 = load %struct.raid_dev*, %struct.raid_dev** %17, align 8
  %19 = icmp ugt %struct.raid_dev* %14, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %13
  %21 = load %struct.raid_dev*, %struct.raid_dev** %3, align 8
  %22 = call i64 @TestClearDevIoQueued(%struct.raid_dev* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load %struct.raid_dev*, %struct.raid_dev** %3, align 8
  %26 = getelementptr inbounds %struct.raid_dev, %struct.raid_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bdev_get_queue(i32 %29)
  %31 = call i32 @blk_unplug(i32 %30)
  br label %32

32:                                               ; preds = %24, %20
  br label %13

33:                                               ; preds = %13
  ret void
}

declare dso_local i64 @TestClearDevIoQueued(%struct.raid_dev*) #1

declare dso_local i32 @blk_unplug(i32) #1

declare dso_local i32 @bdev_get_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
