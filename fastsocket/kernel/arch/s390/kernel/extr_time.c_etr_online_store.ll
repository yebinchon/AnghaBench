; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_online_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_online_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_device = type { i32 }
%struct.sysdev_attribute = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@CLOCK_SYNC_HAS_ETR = common dso_local global i32 0, align 4
@clock_sync_flags = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i64 0, align 8
@clock_sync_mutex = common dso_local global i32 0, align 4
@etr_port0_dev = common dso_local global %struct.sys_device zeroinitializer, align 4
@etr_port0_online = common dso_local global i32 0, align 4
@etr_port1_online = common dso_local global i32 0, align 4
@CLOCK_SYNC_ETR = common dso_local global i32 0, align 4
@ETR_EVENT_PORT0_CHANGE = common dso_local global i32 0, align 4
@etr_events = common dso_local global i32 0, align 4
@time_sync_wq = common dso_local global i32 0, align 4
@etr_work = common dso_local global i32 0, align 4
@ETR_EVENT_PORT1_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sys_device*, %struct.sysdev_attribute*, i8*, i64)* @etr_online_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @etr_online_store(%struct.sys_device* %0, %struct.sysdev_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.sys_device*, align 8
  %7 = alloca %struct.sysdev_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sys_device* %0, %struct.sys_device** %6, align 8
  store %struct.sysdev_attribute* %1, %struct.sysdev_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = call i32 @simple_strtoul(i8* %11, i32* null, i32 0)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %5, align 8
  br label %82

21:                                               ; preds = %15, %4
  %22 = load i32, i32* @CLOCK_SYNC_HAS_ETR, align 4
  %23 = call i32 @test_bit(i32 %22, i32* @clock_sync_flags)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* @EOPNOTSUPP, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %82

28:                                               ; preds = %21
  %29 = call i32 @mutex_lock(i32* @clock_sync_mutex)
  %30 = load %struct.sys_device*, %struct.sys_device** %6, align 8
  %31 = icmp eq %struct.sys_device* %30, @etr_port0_dev
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = load i32, i32* @etr_port0_online, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %79

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* @etr_port0_online, align 4
  %39 = load i32, i32* @etr_port0_online, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* @etr_port1_online, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @CLOCK_SYNC_ETR, align 4
  %46 = call i32 @set_bit(i32 %45, i32* @clock_sync_flags)
  br label %50

47:                                               ; preds = %41, %37
  %48 = load i32, i32* @CLOCK_SYNC_ETR, align 4
  %49 = call i32 @clear_bit(i32 %48, i32* @clock_sync_flags)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* @ETR_EVENT_PORT0_CHANGE, align 4
  %52 = call i32 @set_bit(i32 %51, i32* @etr_events)
  %53 = load i32, i32* @time_sync_wq, align 4
  %54 = call i32 @queue_work(i32 %53, i32* @etr_work)
  br label %78

55:                                               ; preds = %28
  %56 = load i32, i32* @etr_port1_online, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %79

60:                                               ; preds = %55
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* @etr_port1_online, align 4
  %62 = load i32, i32* @etr_port0_online, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* @etr_port1_online, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* @CLOCK_SYNC_ETR, align 4
  %69 = call i32 @set_bit(i32 %68, i32* @clock_sync_flags)
  br label %73

70:                                               ; preds = %64, %60
  %71 = load i32, i32* @CLOCK_SYNC_ETR, align 4
  %72 = call i32 @clear_bit(i32 %71, i32* @clock_sync_flags)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* @ETR_EVENT_PORT1_CHANGE, align 4
  %75 = call i32 @set_bit(i32 %74, i32* @etr_events)
  %76 = load i32, i32* @time_sync_wq, align 4
  %77 = call i32 @queue_work(i32 %76, i32* @etr_work)
  br label %78

78:                                               ; preds = %73, %50
  br label %79

79:                                               ; preds = %78, %59, %36
  %80 = call i32 @mutex_unlock(i32* @clock_sync_mutex)
  %81 = load i64, i64* %9, align 8
  store i64 %81, i64* %5, align 8
  br label %82

82:                                               ; preds = %79, %25, %18
  %83 = load i64, i64* %5, align 8
  ret i64 %83
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
