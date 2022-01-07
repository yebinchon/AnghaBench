; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_pmu.c_reprogram_counter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_pmu.c_reprogram_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pmc = type { i32, %struct.TYPE_6__*, i32, %struct.perf_event* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.perf_event = type { i32 }
%struct.perf_event_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@current = common dso_local global i32 0, align 4
@kvm_perf_overflow_intr = common dso_local global i32 0, align 4
@kvm_perf_overflow = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"kvm: pmu event creation failed %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_pmc*, i32, i32, i32, i32, i32)* @reprogram_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reprogram_counter(%struct.kvm_pmc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.kvm_pmc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.perf_event*, align 8
  %14 = alloca %struct.perf_event_attr, align 4
  store %struct.kvm_pmc* %0, %struct.kvm_pmc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %14, i32 0, i32 0
  store i32 36, i32* %15, align 4
  %16 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %14, i32 0, i32 1
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %14, i32 0, i32 2
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %14, i32 0, i32 3
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %14, i32 0, i32 4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %14, i32 0, i32 5
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %14, i32 0, i32 6
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %14, i32 0, i32 7
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %14, i32 0, i32 8
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %26, align 4
  %28 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %29 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 0, %30
  %32 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %33 = call i32 @pmc_bitmask(%struct.kvm_pmc* %32)
  %34 = and i32 %31, %33
  %35 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %14, i32 0, i32 7
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @current, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %6
  %40 = load i32, i32* @kvm_perf_overflow_intr, align 4
  br label %43

41:                                               ; preds = %6
  %42 = load i32, i32* @kvm_perf_overflow, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %46 = call %struct.perf_event* @perf_event_create_kernel_counter(%struct.perf_event_attr* %14, i32 -1, i32 %36, i32 %44, %struct.kvm_pmc* %45)
  store %struct.perf_event* %46, %struct.perf_event** %13, align 8
  %47 = load %struct.perf_event*, %struct.perf_event** %13, align 8
  %48 = call i64 @IS_ERR(%struct.perf_event* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.perf_event*, %struct.perf_event** %13, align 8
  %52 = call i32 @PTR_ERR(%struct.perf_event* %51)
  %53 = call i32 @printk_once(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %69

54:                                               ; preds = %43
  %55 = load %struct.perf_event*, %struct.perf_event** %13, align 8
  %56 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %57 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %56, i32 0, i32 3
  store %struct.perf_event* %55, %struct.perf_event** %57, align 8
  %58 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %59 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %62 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = bitcast i32* %66 to i64*
  %68 = call i32 @clear_bit(i32 %60, i64* %67)
  br label %69

69:                                               ; preds = %54, %50
  ret void
}

declare dso_local i32 @pmc_bitmask(%struct.kvm_pmc*) #1

declare dso_local %struct.perf_event* @perf_event_create_kernel_counter(%struct.perf_event_attr*, i32, i32, i32, %struct.kvm_pmc*) #1

declare dso_local i64 @IS_ERR(%struct.perf_event*) #1

declare dso_local i32 @printk_once(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.perf_event*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
