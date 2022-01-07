; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_smp.c_native_send_call_func_ipi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_smp.c_native_send_call_func_ipi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cpumask*, i32)*, i32 (i32)* }
%struct.cpumask = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@apic = common dso_local global %struct.TYPE_2__* null, align 8
@CALL_FUNCTION_VECTOR = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global %struct.cpumask* null, align 8
@cpu_callout_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @native_send_call_func_ipi(%struct.cpumask* %0) #0 {
  %2 = alloca %struct.cpumask*, align 8
  %3 = alloca i32, align 4
  store %struct.cpumask* %0, %struct.cpumask** %2, align 8
  %4 = load i32, i32* @GFP_ATOMIC, align 4
  %5 = call i32 @alloc_cpumask_var(i32* %3, i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apic, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.cpumask*, i32)*, i32 (%struct.cpumask*, i32)** %9, align 8
  %11 = load %struct.cpumask*, %struct.cpumask** %2, align 8
  %12 = load i32, i32* @CALL_FUNCTION_VECTOR, align 4
  %13 = call i32 %10(%struct.cpumask* %11, i32 %12)
  br label %46

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.cpumask*, %struct.cpumask** @cpu_online_mask, align 8
  %17 = call i32 @cpumask_copy(i32 %15, %struct.cpumask* %16)
  %18 = call i32 (...) @smp_processor_id()
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @cpumask_clear_cpu(i32 %18, i32 %19)
  %21 = load %struct.cpumask*, %struct.cpumask** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @cpumask_equal(%struct.cpumask* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %14
  %26 = load %struct.cpumask*, %struct.cpumask** @cpu_online_mask, align 8
  %27 = load i32, i32* @cpu_callout_mask, align 4
  %28 = call i64 @cpumask_equal(%struct.cpumask* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apic, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32 (i32)*, i32 (i32)** %32, align 8
  %34 = load i32, i32* @CALL_FUNCTION_VECTOR, align 4
  %35 = call i32 %33(i32 %34)
  br label %43

36:                                               ; preds = %25, %14
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apic, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.cpumask*, i32)*, i32 (%struct.cpumask*, i32)** %38, align 8
  %40 = load %struct.cpumask*, %struct.cpumask** %2, align 8
  %41 = load i32, i32* @CALL_FUNCTION_VECTOR, align 4
  %42 = call i32 %39(%struct.cpumask* %40, i32 %41)
  br label %43

43:                                               ; preds = %36, %30
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @free_cpumask_var(i32 %44)
  br label %46

46:                                               ; preds = %43, %7
  ret void
}

declare dso_local i32 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @cpumask_copy(i32, %struct.cpumask*) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @cpumask_equal(%struct.cpumask*, i32) #1

declare dso_local i32 @free_cpumask_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
