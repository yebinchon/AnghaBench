; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_delayed_wake.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_delayed_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror_set = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@delayed_wake_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mirror_set*)* @delayed_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delayed_wake(%struct.mirror_set* %0) #0 {
  %2 = alloca %struct.mirror_set*, align 8
  store %struct.mirror_set* %0, %struct.mirror_set** %2, align 8
  %3 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %4 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %3, i32 0, i32 1
  %5 = call i64 @test_and_set_bit(i32 0, i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %29

8:                                                ; preds = %1
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i32, i32* @HZ, align 4
  %11 = sdiv i32 %10, 5
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %9, %12
  %14 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %15 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i64 %13, i64* %16, align 8
  %17 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %18 = ptrtoint %struct.mirror_set* %17 to i64
  %19 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %20 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = load i32, i32* @delayed_wake_fn, align 4
  %23 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %24 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 8
  %26 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %27 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %26, i32 0, i32 0
  %28 = call i32 @add_timer(%struct.TYPE_2__* %27)
  br label %29

29:                                               ; preds = %8, %7
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
