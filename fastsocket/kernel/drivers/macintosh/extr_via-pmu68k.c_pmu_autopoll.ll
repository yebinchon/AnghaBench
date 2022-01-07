; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu68k.c_pmu_autopoll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu68k.c_pmu_autopoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32 }

@pmu_fully_inited = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@adb_dev_map = common dso_local global i32 0, align 4
@PMU_ADB_CMD = common dso_local global i32 0, align 4
@pmu_adb_flags = common dso_local global i32 0, align 4
@PMU_ADB_POLL_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pmu_autopoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_autopoll(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.adb_request, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @pmu_fully_inited, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ENXIO, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %32

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  store i32 %14, i32* @adb_dev_map, align 4
  %15 = load i32, i32* @PMU_ADB_CMD, align 4
  %16 = load i32, i32* @adb_dev_map, align 4
  %17 = ashr i32 %16, 8
  %18 = load i32, i32* @adb_dev_map, align 4
  %19 = call i32 (%struct.adb_request*, i32*, i32, i32, ...) @pmu_request(%struct.adb_request* %4, i32* null, i32 5, i32 %15, i32 0, i32 134, i32 %17, i32 %18)
  store i32 2, i32* @pmu_adb_flags, align 4
  br label %23

20:                                               ; preds = %10
  %21 = load i32, i32* @PMU_ADB_POLL_OFF, align 4
  %22 = call i32 (%struct.adb_request*, i32*, i32, i32, ...) @pmu_request(%struct.adb_request* %4, i32* null, i32 1, i32 %21)
  store i32 0, i32* @pmu_adb_flags, align 4
  br label %23

23:                                               ; preds = %20, %13
  br label %24

24:                                               ; preds = %29, %23
  %25 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 (...) @pmu_poll()
  br label %24

31:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %7
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @pmu_request(%struct.adb_request*, i32*, i32, i32, ...) #1

declare dso_local i32 @pmu_poll(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
