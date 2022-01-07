; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_time_32.c_sbus_do_settimeofday.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_time_32.c_sbus_do_settimeofday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.timespec = type { i64, i64 }

@NSEC_PER_SEC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@wall_to_monotonic = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@xtime = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timespec*)* @sbus_do_settimeofday to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbus_do_settimeofday(%struct.timespec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timespec*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.timespec* %0, %struct.timespec** %3, align 8
  %8 = load %struct.timespec*, %struct.timespec** %3, align 8
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.timespec*, %struct.timespec** %3, align 8
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.timespec*, %struct.timespec** %3, align 8
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NSEC_PER_SEC, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %45

22:                                               ; preds = %1
  %23 = call i32 (...) @do_gettimeoffset()
  %24 = mul nsw i32 1000, %23
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %7, align 8
  %27 = sub nsw i64 %26, %25
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wall_to_monotonic, i32 0, i32 1), align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xtime, i32 0, i32 1), align 8
  %30 = load i64, i64* %5, align 8
  %31 = sub nsw i64 %29, %30
  %32 = add nsw i64 %28, %31
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wall_to_monotonic, i32 0, i32 0), align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xtime, i32 0, i32 0), align 8
  %35 = load i64, i64* %7, align 8
  %36 = sub nsw i64 %34, %35
  %37 = add nsw i64 %33, %36
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @set_normalized_timespec(%struct.TYPE_4__* @xtime, i64 %38, i64 %39)
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @set_normalized_timespec(%struct.TYPE_4__* @wall_to_monotonic, i64 %41, i64 %42)
  %44 = call i32 (...) @ntp_clear()
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %22, %19
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @do_gettimeoffset(...) #1

declare dso_local i32 @set_normalized_timespec(%struct.TYPE_4__*, i64, i64) #1

declare dso_local i32 @ntp_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
