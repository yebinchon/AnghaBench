; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_suspend_bts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_suspend_bts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bts_tracer = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.task_struct* }
%struct.task_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@BTS_CONTROL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ds_suspend_bts(%struct.bts_tracer* %0) #0 {
  %2 = alloca %struct.bts_tracer*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.bts_tracer* %0, %struct.bts_tracer** %2, align 8
  %6 = load %struct.bts_tracer*, %struct.bts_tracer** %2, align 8
  %7 = icmp ne %struct.bts_tracer* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %59

9:                                                ; preds = %1
  %10 = load %struct.bts_tracer*, %struct.bts_tracer** %2, align 8
  %11 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.bts_tracer*, %struct.bts_tracer** %2, align 8
  %13 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.task_struct*, %struct.task_struct** %16, align 8
  store %struct.task_struct* %17, %struct.task_struct** %3, align 8
  %18 = load %struct.bts_tracer*, %struct.bts_tracer** %2, align 8
  %19 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %5, align 4
  %24 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %25 = icmp ne %struct.task_struct* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %9
  %27 = call i64 (...) @irqs_disabled()
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %26, %9
  %30 = phi i1 [ false, %9 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %34 = icmp ne %struct.task_struct* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  br label %43

40:                                               ; preds = %29
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @get_debugctlmsr_on_cpu(i32 %41)
  br label %43

43:                                               ; preds = %40, %35
  %44 = phi i64 [ %39, %35 ], [ %42, %40 ]
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* @BTS_CONTROL, align 8
  %46 = xor i64 %45, -1
  %47 = load i64, i64* %4, align 8
  %48 = and i64 %47, %46
  store i64 %48, i64* %4, align 8
  %49 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %50 = icmp ne %struct.task_struct* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @update_task_debugctlmsr(%struct.task_struct* %52, i64 %53)
  br label %59

55:                                               ; preds = %43
  %56 = load i32, i32* %5, align 4
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @update_debugctlmsr_on_cpu(i32 %56, i64 %57)
  br label %59

59:                                               ; preds = %8, %55, %51
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @irqs_disabled(...) #1

declare dso_local i64 @get_debugctlmsr_on_cpu(i32) #1

declare dso_local i32 @update_task_debugctlmsr(%struct.task_struct*, i64) #1

declare dso_local i32 @update_debugctlmsr_on_cpu(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
