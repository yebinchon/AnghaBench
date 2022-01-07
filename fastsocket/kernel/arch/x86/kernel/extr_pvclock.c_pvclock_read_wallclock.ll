; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_pvclock.c_pvclock_read_wallclock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_pvclock.c_pvclock_read_wallclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvclock_wall_clock = type { i32, i32, i64 }
%struct.pvclock_vcpu_time_info = type { i32 }
%struct.timespec = type { i32, i64 }

@NSEC_PER_SEC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvclock_read_wallclock(%struct.pvclock_wall_clock* %0, %struct.pvclock_vcpu_time_info* %1, %struct.timespec* %2) #0 {
  %4 = alloca %struct.pvclock_wall_clock*, align 8
  %5 = alloca %struct.pvclock_vcpu_time_info*, align 8
  %6 = alloca %struct.timespec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec, align 8
  store %struct.pvclock_wall_clock* %0, %struct.pvclock_wall_clock** %4, align 8
  store %struct.pvclock_vcpu_time_info* %1, %struct.pvclock_vcpu_time_info** %5, align 8
  store %struct.timespec* %2, %struct.timespec** %6, align 8
  br label %10

10:                                               ; preds = %36, %3
  %11 = load %struct.pvclock_wall_clock*, %struct.pvclock_wall_clock** %4, align 8
  %12 = getelementptr inbounds %struct.pvclock_wall_clock, %struct.pvclock_wall_clock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = call i32 (...) @rmb()
  %15 = load %struct.pvclock_wall_clock*, %struct.pvclock_wall_clock** %4, align 8
  %16 = getelementptr inbounds %struct.pvclock_wall_clock, %struct.pvclock_wall_clock* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load %struct.pvclock_wall_clock*, %struct.pvclock_wall_clock** %4, align 8
  %20 = getelementptr inbounds %struct.pvclock_wall_clock, %struct.pvclock_wall_clock* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  store i64 %21, i64* %22, align 8
  %23 = call i32 (...) @rmb()
  br label %24

24:                                               ; preds = %10
  %25 = load %struct.pvclock_wall_clock*, %struct.pvclock_wall_clock** %4, align 8
  %26 = getelementptr inbounds %struct.pvclock_wall_clock, %struct.pvclock_wall_clock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.pvclock_wall_clock*, %struct.pvclock_wall_clock** %4, align 8
  %33 = getelementptr inbounds %struct.pvclock_wall_clock, %struct.pvclock_wall_clock* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %31, %34
  br label %36

36:                                               ; preds = %30, %24
  %37 = phi i1 [ true, %24 ], [ %35, %30 ]
  br i1 %37, label %10, label %38

38:                                               ; preds = %36
  %39 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %5, align 8
  %40 = call i32 @pvclock_clocksource_read(%struct.pvclock_vcpu_time_info* %39)
  store i32 %40, i32* %8, align 4
  %41 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* @NSEC_PER_SEC, align 8
  %44 = trunc i64 %43 to i32
  %45 = mul nsw i32 %42, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %46, %48
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i64, i64* @NSEC_PER_SEC, align 8
  %56 = call i64 @do_div(i32 %54, i64 %55)
  %57 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  store i64 %56, i64* %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = load %struct.timespec*, %struct.timespec** %6, align 8
  %61 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @set_normalized_timespec(%struct.timespec* %60, i32 %62, i64 %64)
  ret void
}

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @pvclock_clocksource_read(%struct.pvclock_vcpu_time_info*) #1

declare dso_local i64 @do_div(i32, i64) #1

declare dso_local i32 @set_normalized_timespec(%struct.timespec*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
