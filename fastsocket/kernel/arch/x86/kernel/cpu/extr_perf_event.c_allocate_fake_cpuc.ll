; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_allocate_fake_cpuc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_allocate_fake_cpuc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.cpu_hw_events = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cpu_hw_events* ()* @allocate_fake_cpuc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cpu_hw_events* @allocate_fake_cpuc() #0 {
  %1 = alloca %struct.cpu_hw_events*, align 8
  %2 = alloca %struct.cpu_hw_events*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @raw_smp_processor_id()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.cpu_hw_events* @kzalloc(i32 4, i32 %5)
  store %struct.cpu_hw_events* %6, %struct.cpu_hw_events** %2, align 8
  %7 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %8 = icmp ne %struct.cpu_hw_events* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.cpu_hw_events* @ERR_PTR(i32 %11)
  store %struct.cpu_hw_events* %12, %struct.cpu_hw_events** %1, align 8
  br label %35

13:                                               ; preds = %0
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @allocate_shared_regs(i32 %17)
  %19 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %20 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %22 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  br label %29

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26, %13
  %28 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  store %struct.cpu_hw_events* %28, %struct.cpu_hw_events** %1, align 8
  br label %35

29:                                               ; preds = %25
  %30 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %31 = call i32 @free_fake_cpuc(%struct.cpu_hw_events* %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.cpu_hw_events* @ERR_PTR(i32 %33)
  store %struct.cpu_hw_events* %34, %struct.cpu_hw_events** %1, align 8
  br label %35

35:                                               ; preds = %29, %27, %9
  %36 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %1, align 8
  ret %struct.cpu_hw_events* %36
}

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local %struct.cpu_hw_events* @kzalloc(i32, i32) #1

declare dso_local %struct.cpu_hw_events* @ERR_PTR(i32) #1

declare dso_local i32 @allocate_shared_regs(i32) #1

declare dso_local i32 @free_fake_cpuc(%struct.cpu_hw_events*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
