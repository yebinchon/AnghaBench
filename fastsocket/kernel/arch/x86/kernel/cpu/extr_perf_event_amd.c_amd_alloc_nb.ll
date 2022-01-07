; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_amd.c_amd_alloc_nb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_amd.c_amd_alloc_nb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.amd_nb = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.amd_nb* (i32)* @amd_alloc_nb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.amd_nb* @amd_alloc_nb(i32 %0) #0 {
  %2 = alloca %struct.amd_nb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.amd_nb*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = load i32, i32* @__GFP_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @cpu_to_node(i32 %9)
  %11 = call %struct.amd_nb* @kmalloc_node(i32 16, i32 %8, i32 %10)
  store %struct.amd_nb* %11, %struct.amd_nb** %4, align 8
  %12 = load %struct.amd_nb*, %struct.amd_nb** %4, align 8
  %13 = icmp ne %struct.amd_nb* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.amd_nb* null, %struct.amd_nb** %2, align 8
  br label %45

15:                                               ; preds = %1
  %16 = load %struct.amd_nb*, %struct.amd_nb** %4, align 8
  %17 = getelementptr inbounds %struct.amd_nb, %struct.amd_nb* %16, i32 0, i32 0
  store i32 -1, i32* %17, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %40, %15
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 0), align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.amd_nb*, %struct.amd_nb** %4, align 8
  %25 = getelementptr inbounds %struct.amd_nb, %struct.amd_nb* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @__set_bit(i32 %23, i32 %31)
  %33 = load %struct.amd_nb*, %struct.amd_nb** %4, align 8
  %34 = getelementptr inbounds %struct.amd_nb, %struct.amd_nb* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %22
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %18

43:                                               ; preds = %18
  %44 = load %struct.amd_nb*, %struct.amd_nb** %4, align 8
  store %struct.amd_nb* %44, %struct.amd_nb** %2, align 8
  br label %45

45:                                               ; preds = %43, %14
  %46 = load %struct.amd_nb*, %struct.amd_nb** %2, align 8
  ret %struct.amd_nb* %46
}

declare dso_local %struct.amd_nb* @kmalloc_node(i32, i32, i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
