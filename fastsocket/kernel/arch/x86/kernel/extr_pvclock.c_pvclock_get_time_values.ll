; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_pvclock.c_pvclock_get_time_values.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_pvclock.c_pvclock_get_time_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvclock_shadow_time = type { i32, i32, i32, i32, i32, i32 }
%struct.pvclock_vcpu_time_info = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvclock_shadow_time*, %struct.pvclock_vcpu_time_info*)* @pvclock_get_time_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvclock_get_time_values(%struct.pvclock_shadow_time* %0, %struct.pvclock_vcpu_time_info* %1) #0 {
  %3 = alloca %struct.pvclock_shadow_time*, align 8
  %4 = alloca %struct.pvclock_vcpu_time_info*, align 8
  store %struct.pvclock_shadow_time* %0, %struct.pvclock_shadow_time** %3, align 8
  store %struct.pvclock_vcpu_time_info* %1, %struct.pvclock_vcpu_time_info** %4, align 8
  br label %5

5:                                                ; preds = %52, %2
  %6 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %4, align 8
  %7 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.pvclock_shadow_time*, %struct.pvclock_shadow_time** %3, align 8
  %10 = getelementptr inbounds %struct.pvclock_shadow_time, %struct.pvclock_shadow_time* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = call i32 (...) @rmb()
  %12 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %4, align 8
  %13 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pvclock_shadow_time*, %struct.pvclock_shadow_time** %3, align 8
  %16 = getelementptr inbounds %struct.pvclock_shadow_time, %struct.pvclock_shadow_time* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 4
  %17 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %4, align 8
  %18 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pvclock_shadow_time*, %struct.pvclock_shadow_time** %3, align 8
  %21 = getelementptr inbounds %struct.pvclock_shadow_time, %struct.pvclock_shadow_time* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %4, align 8
  %23 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pvclock_shadow_time*, %struct.pvclock_shadow_time** %3, align 8
  %26 = getelementptr inbounds %struct.pvclock_shadow_time, %struct.pvclock_shadow_time* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %4, align 8
  %28 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pvclock_shadow_time*, %struct.pvclock_shadow_time** %3, align 8
  %31 = getelementptr inbounds %struct.pvclock_shadow_time, %struct.pvclock_shadow_time* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %4, align 8
  %33 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pvclock_shadow_time*, %struct.pvclock_shadow_time** %3, align 8
  %36 = getelementptr inbounds %struct.pvclock_shadow_time, %struct.pvclock_shadow_time* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = call i32 (...) @rmb()
  br label %38

38:                                               ; preds = %5
  %39 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %4, align 8
  %40 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %38
  %45 = load %struct.pvclock_shadow_time*, %struct.pvclock_shadow_time** %3, align 8
  %46 = getelementptr inbounds %struct.pvclock_shadow_time, %struct.pvclock_shadow_time* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %4, align 8
  %49 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %47, %50
  br label %52

52:                                               ; preds = %44, %38
  %53 = phi i1 [ true, %38 ], [ %51, %44 ]
  br i1 %53, label %5, label %54

54:                                               ; preds = %52
  %55 = load %struct.pvclock_shadow_time*, %struct.pvclock_shadow_time** %3, align 8
  %56 = getelementptr inbounds %struct.pvclock_shadow_time, %struct.pvclock_shadow_time* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  ret i32 %57
}

declare dso_local i32 @rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
