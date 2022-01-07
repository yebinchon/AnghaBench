; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_time.c_update_vsyscall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_time.c_update_vsyscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.clocksource = type { i32, i32, i32, i32, i32 }

@fsyscall_gtod_data = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@wall_to_monotonic = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@NSEC_PER_SEC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_vsyscall(%struct.timespec* %0, %struct.clocksource* %1) #0 {
  %3 = alloca %struct.timespec*, align 8
  %4 = alloca %struct.clocksource*, align 8
  %5 = alloca i64, align 8
  store %struct.timespec* %0, %struct.timespec** %3, align 8
  store %struct.clocksource* %1, %struct.clocksource** %4, align 8
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @write_seqlock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fsyscall_gtod_data, i32 0, i32 0), i64 %6)
  %8 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %9 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fsyscall_gtod_data, i32 0, i32 7), align 8
  %11 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %12 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fsyscall_gtod_data, i32 0, i32 6), align 4
  %14 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %15 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fsyscall_gtod_data, i32 0, i32 5), align 8
  %17 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %18 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fsyscall_gtod_data, i32 0, i32 4), align 4
  %20 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %21 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fsyscall_gtod_data, i32 0, i32 3), align 8
  %23 = load %struct.timespec*, %struct.timespec** %3, align 8
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fsyscall_gtod_data, i32 0, i32 2, i32 1), align 8
  %26 = load %struct.timespec*, %struct.timespec** %3, align 8
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fsyscall_gtod_data, i32 0, i32 2, i32 0), align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @wall_to_monotonic, i32 0, i32 1), align 8
  %30 = load %struct.timespec*, %struct.timespec** %3, align 8
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  store i64 %33, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fsyscall_gtod_data, i32 0, i32 1, i32 1), align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @wall_to_monotonic, i32 0, i32 0), align 8
  %35 = load %struct.timespec*, %struct.timespec** %3, align 8
  %36 = getelementptr inbounds %struct.timespec, %struct.timespec* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  store i64 %38, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fsyscall_gtod_data, i32 0, i32 1, i32 0), align 8
  br label %39

39:                                               ; preds = %43, %2
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fsyscall_gtod_data, i32 0, i32 1, i32 0), align 8
  %41 = load i64, i64* @NSEC_PER_SEC, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i64, i64* @NSEC_PER_SEC, align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fsyscall_gtod_data, i32 0, i32 1, i32 0), align 8
  %46 = sub nsw i64 %45, %44
  store i64 %46, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fsyscall_gtod_data, i32 0, i32 1, i32 0), align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fsyscall_gtod_data, i32 0, i32 1, i32 1), align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fsyscall_gtod_data, i32 0, i32 1, i32 1), align 8
  br label %39

49:                                               ; preds = %39
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @write_sequnlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fsyscall_gtod_data, i32 0, i32 0), i64 %50)
  ret void
}

declare dso_local i32 @write_seqlock_irqsave(i32*, i64) #1

declare dso_local i32 @write_sequnlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
