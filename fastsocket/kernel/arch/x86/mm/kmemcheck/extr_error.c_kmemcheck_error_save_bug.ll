; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/kmemcheck/extr_error.c_kmemcheck_error_save_bug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/kmemcheck/extr_error.c_kmemcheck_error_save_bug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.kmemcheck_error = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@KMEMCHECK_ERROR_BUG = common dso_local global i32 0, align 4
@kmemcheck_tasklet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kmemcheck_error_save_bug(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca %struct.kmemcheck_error*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %4 = call %struct.kmemcheck_error* (...) @error_next_wr()
  store %struct.kmemcheck_error* %4, %struct.kmemcheck_error** %3, align 8
  %5 = load %struct.kmemcheck_error*, %struct.kmemcheck_error** %3, align 8
  %6 = icmp ne %struct.kmemcheck_error* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %39

8:                                                ; preds = %1
  %9 = load i32, i32* @KMEMCHECK_ERROR_BUG, align 4
  %10 = load %struct.kmemcheck_error*, %struct.kmemcheck_error** %3, align 8
  %11 = getelementptr inbounds %struct.kmemcheck_error, %struct.kmemcheck_error* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load %struct.kmemcheck_error*, %struct.kmemcheck_error** %3, align 8
  %13 = getelementptr inbounds %struct.kmemcheck_error, %struct.kmemcheck_error* %12, i32 0, i32 2
  %14 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %15 = call i32 @memcpy(i32* %13, %struct.pt_regs* %14, i32 4)
  %16 = load %struct.kmemcheck_error*, %struct.kmemcheck_error** %3, align 8
  %17 = getelementptr inbounds %struct.kmemcheck_error, %struct.kmemcheck_error* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.kmemcheck_error*, %struct.kmemcheck_error** %3, align 8
  %20 = getelementptr inbounds %struct.kmemcheck_error, %struct.kmemcheck_error* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.kmemcheck_error*, %struct.kmemcheck_error** %3, align 8
  %23 = getelementptr inbounds %struct.kmemcheck_error, %struct.kmemcheck_error* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 8
  %25 = load %struct.kmemcheck_error*, %struct.kmemcheck_error** %3, align 8
  %26 = getelementptr inbounds %struct.kmemcheck_error, %struct.kmemcheck_error* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ARRAY_SIZE(i32 %27)
  %29 = load %struct.kmemcheck_error*, %struct.kmemcheck_error** %3, align 8
  %30 = getelementptr inbounds %struct.kmemcheck_error, %struct.kmemcheck_error* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.kmemcheck_error*, %struct.kmemcheck_error** %3, align 8
  %33 = getelementptr inbounds %struct.kmemcheck_error, %struct.kmemcheck_error* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.kmemcheck_error*, %struct.kmemcheck_error** %3, align 8
  %36 = getelementptr inbounds %struct.kmemcheck_error, %struct.kmemcheck_error* %35, i32 0, i32 0
  %37 = call i32 @save_stack_trace(%struct.TYPE_2__* %36)
  %38 = call i32 @tasklet_hi_schedule_first(i32* @kmemcheck_tasklet)
  br label %39

39:                                               ; preds = %8, %7
  ret void
}

declare dso_local %struct.kmemcheck_error* @error_next_wr(...) #1

declare dso_local i32 @memcpy(i32*, %struct.pt_regs*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @save_stack_trace(%struct.TYPE_2__*) #1

declare dso_local i32 @tasklet_hi_schedule_first(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
