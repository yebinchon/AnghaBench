; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/swarm/extr_setup.c_read_persistent_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/swarm/extr_setup.c_read_persistent_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@swarm_rtc_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_persistent_clock(%struct.timespec* %0) #0 {
  %2 = alloca %struct.timespec*, align 8
  %3 = alloca i64, align 8
  store %struct.timespec* %0, %struct.timespec** %2, align 8
  %4 = load i32, i32* @swarm_rtc_type, align 4
  switch i32 %4, label %10 [
    i32 128, label %5
    i32 130, label %7
    i32 129, label %9
  ]

5:                                                ; preds = %1
  %6 = call i64 (...) @xicor_get_time()
  store i64 %6, i64* %3, align 8
  br label %12

7:                                                ; preds = %1
  %8 = call i64 (...) @m41t81_get_time()
  store i64 %8, i64* %3, align 8
  br label %12

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %1, %9
  %11 = call i64 @mktime(i32 2000, i32 1, i32 1, i32 0, i32 0, i32 0)
  store i64 %11, i64* %3, align 8
  br label %12

12:                                               ; preds = %10, %7, %5
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.timespec*, %struct.timespec** %2, align 8
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.timespec*, %struct.timespec** %2, align 8
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  ret void
}

declare dso_local i64 @xicor_get_time(...) #1

declare dso_local i64 @m41t81_get_time(...) #1

declare dso_local i64 @mktime(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
