; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_stp_online_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_stp_online_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysdev_class = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@CLOCK_SYNC_HAS_STP = common dso_local global i32 0, align 4
@clock_sync_flags = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i64 0, align 8
@clock_sync_mutex = common dso_local global i32 0, align 4
@stp_online = common dso_local global i32 0, align 4
@CLOCK_SYNC_STP = common dso_local global i32 0, align 4
@time_sync_wq = common dso_local global i32 0, align 4
@stp_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sysdev_class*, i8*, i64)* @stp_online_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stp_online_store(%struct.sysdev_class* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.sysdev_class*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.sysdev_class* %0, %struct.sysdev_class** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @simple_strtoul(i8* %9, i32* null, i32 0)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i64, i64* @EINVAL, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %4, align 8
  br label %42

19:                                               ; preds = %13, %3
  %20 = load i32, i32* @CLOCK_SYNC_HAS_STP, align 4
  %21 = call i32 @test_bit(i32 %20, i32* @clock_sync_flags)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* @EOPNOTSUPP, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %4, align 8
  br label %42

26:                                               ; preds = %19
  %27 = call i32 @mutex_lock(i32* @clock_sync_mutex)
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* @stp_online, align 4
  %29 = load i32, i32* @stp_online, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @CLOCK_SYNC_STP, align 4
  %33 = call i32 @set_bit(i32 %32, i32* @clock_sync_flags)
  br label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @CLOCK_SYNC_STP, align 4
  %36 = call i32 @clear_bit(i32 %35, i32* @clock_sync_flags)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* @time_sync_wq, align 4
  %39 = call i32 @queue_work(i32 %38, i32* @stp_work)
  %40 = call i32 @mutex_unlock(i32* @clock_sync_mutex)
  %41 = load i64, i64* %7, align 8
  store i64 %41, i64* %4, align 8
  br label %42

42:                                               ; preds = %37, %23, %16
  %43 = load i64, i64* %4, align 8
  ret i64 %43
}

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
