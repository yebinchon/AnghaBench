; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_suspend_bts_noirq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_suspend_bts_noirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bts_tracer = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.task_struct* }
%struct.task_struct = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@EPERM = common dso_local global i32 0, align 4
@BTS_CONTROL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ds_suspend_bts_noirq(%struct.bts_tracer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bts_tracer*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bts_tracer* %0, %struct.bts_tracer** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.bts_tracer*, %struct.bts_tracer** %3, align 8
  %10 = icmp ne %struct.bts_tracer* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

12:                                               ; preds = %1
  %13 = load %struct.bts_tracer*, %struct.bts_tracer** %3, align 8
  %14 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.bts_tracer*, %struct.bts_tracer** %3, align 8
  %16 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.task_struct*, %struct.task_struct** %19, align 8
  store %struct.task_struct* %20, %struct.task_struct** %4, align 8
  %21 = load %struct.bts_tracer*, %struct.bts_tracer** %3, align 8
  %22 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %7, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @local_irq_save(i64 %27)
  %29 = load i32, i32* @EPERM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  %31 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %32 = icmp ne %struct.task_struct* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %12
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (...) @smp_processor_id()
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %64

38:                                               ; preds = %33, %12
  %39 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %40 = icmp ne %struct.task_struct* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  br label %48

46:                                               ; preds = %38
  %47 = call i64 (...) @get_debugctlmsr()
  br label %48

48:                                               ; preds = %46, %41
  %49 = phi i64 [ %45, %41 ], [ %47, %46 ]
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* @BTS_CONTROL, align 8
  %51 = xor i64 %50, -1
  %52 = load i64, i64* %5, align 8
  %53 = and i64 %52, %51
  store i64 %53, i64* %5, align 8
  %54 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %55 = icmp ne %struct.task_struct* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @update_task_debugctlmsr(%struct.task_struct* %57, i64 %58)
  br label %63

60:                                               ; preds = %48
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @update_debugctlmsr(i64 %61)
  br label %63

63:                                               ; preds = %60, %56
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %63, %37
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @local_irq_restore(i64 %65)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %64, %11
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @get_debugctlmsr(...) #1

declare dso_local i32 @update_task_debugctlmsr(%struct.task_struct*, i64) #1

declare dso_local i32 @update_debugctlmsr(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
