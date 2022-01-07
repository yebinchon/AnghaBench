; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_uncore_alloc_box.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_uncore_alloc_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.intel_uncore_type = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.intel_uncore_box* @uncore_alloc_box(%struct.intel_uncore_type* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_uncore_box*, align 8
  %4 = alloca %struct.intel_uncore_type*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_uncore_box*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_uncore_type* %0, %struct.intel_uncore_type** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.intel_uncore_type*, %struct.intel_uncore_type** %4, align 8
  %10 = getelementptr inbounds %struct.intel_uncore_type, %struct.intel_uncore_type* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = add i64 24, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load i32, i32* @__GFP_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @cpu_to_node(i32 %20)
  %22 = call %struct.intel_uncore_box* @kmalloc_node(i32 %16, i32 %19, i32 %21)
  store %struct.intel_uncore_box* %22, %struct.intel_uncore_box** %6, align 8
  %23 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %24 = icmp ne %struct.intel_uncore_box* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store %struct.intel_uncore_box* null, %struct.intel_uncore_box** %3, align 8
  br label %56

26:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %42, %26
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.intel_uncore_type*, %struct.intel_uncore_type** %4, align 8
  %30 = getelementptr inbounds %struct.intel_uncore_type, %struct.intel_uncore_type* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %35 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @spin_lock_init(i32* %40)
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %27

45:                                               ; preds = %27
  %46 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %47 = call i32 @uncore_pmu_init_hrtimer(%struct.intel_uncore_box* %46)
  %48 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %49 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %48, i32 0, i32 2
  %50 = call i32 @atomic_set(i32* %49, i32 1)
  %51 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %52 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %51, i32 0, i32 0
  store i32 -1, i32* %52, align 8
  %53 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %54 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %53, i32 0, i32 1
  store i32 -1, i32* %54, align 4
  %55 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  store %struct.intel_uncore_box* %55, %struct.intel_uncore_box** %3, align 8
  br label %56

56:                                               ; preds = %45, %25
  %57 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  ret %struct.intel_uncore_box* %57
}

declare dso_local %struct.intel_uncore_box* @kmalloc_node(i32, i32, i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @uncore_pmu_init_hrtimer(%struct.intel_uncore_box*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
