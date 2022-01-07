; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_pvclock.c_pvclock_clocksource_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_pvclock.c_pvclock_clocksource_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvclock_vcpu_time_info = type { i32 }
%struct.pvclock_shadow_time = type { i64, i32 }

@valid_flags = common dso_local global i32 0, align 4
@PVCLOCK_TSC_STABLE_BIT = common dso_local global i32 0, align 4
@last_value = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pvclock_clocksource_read(%struct.pvclock_vcpu_time_info* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pvclock_vcpu_time_info*, align 8
  %4 = alloca %struct.pvclock_shadow_time, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.pvclock_vcpu_time_info* %0, %struct.pvclock_vcpu_time_info** %3, align 8
  br label %9

9:                                                ; preds = %19, %1
  %10 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %3, align 8
  %11 = call i32 @pvclock_get_time_values(%struct.pvclock_shadow_time* %4, %struct.pvclock_vcpu_time_info* %10)
  store i32 %11, i32* %5, align 4
  %12 = call i32 (...) @barrier()
  %13 = call i64 @pvclock_get_nsec_offset(%struct.pvclock_shadow_time* %4)
  store i64 %13, i64* %7, align 8
  %14 = getelementptr inbounds %struct.pvclock_shadow_time, %struct.pvclock_shadow_time* %4, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* %6, align 8
  %18 = call i32 (...) @barrier()
  br label %19

19:                                               ; preds = %9
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %3, align 8
  %22 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %9, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @valid_flags, align 4
  %27 = load i32, i32* @PVCLOCK_TSC_STABLE_BIT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.pvclock_shadow_time, %struct.pvclock_shadow_time* %4, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PVCLOCK_TSC_STABLE_BIT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* %6, align 8
  store i64 %37, i64* %2, align 8
  br label %59

38:                                               ; preds = %30, %25
  %39 = call i64 @atomic64_read(i32* @last_value)
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %50, %38
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i64, i64* %8, align 8
  store i64 %45, i64* %2, align 8
  br label %59

46:                                               ; preds = %40
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i64 @atomic64_cmpxchg(i32* @last_value, i64 %47, i64 %48)
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %40, label %57

57:                                               ; preds = %50
  %58 = load i64, i64* %6, align 8
  store i64 %58, i64* %2, align 8
  br label %59

59:                                               ; preds = %57, %44, %36
  %60 = load i64, i64* %2, align 8
  ret i64 %60
}

declare dso_local i32 @pvclock_get_time_values(%struct.pvclock_shadow_time*, %struct.pvclock_vcpu_time_info*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @pvclock_get_nsec_offset(%struct.pvclock_shadow_time*) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i64 @atomic64_cmpxchg(i32*, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
