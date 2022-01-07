; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_release_bts_noirq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_release_bts_noirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.bts_tracer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.task_struct* }

@EPERM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ds_release_bts_noirq(%struct.bts_tracer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bts_tracer*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.bts_tracer* %0, %struct.bts_tracer** %3, align 8
  %7 = load %struct.bts_tracer*, %struct.bts_tracer** %3, align 8
  %8 = icmp ne %struct.bts_tracer* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

10:                                               ; preds = %1
  %11 = load %struct.bts_tracer*, %struct.bts_tracer** %3, align 8
  %12 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.task_struct*, %struct.task_struct** %15, align 8
  store %struct.task_struct* %16, %struct.task_struct** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @local_irq_save(i64 %17)
  %19 = load i32, i32* @EPERM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %22 = icmp ne %struct.task_struct* %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %10
  %24 = load %struct.bts_tracer*, %struct.bts_tracer** %3, align 8
  %25 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 (...) @smp_processor_id()
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %48

33:                                               ; preds = %23, %10
  %34 = load i32, i32* @EPERM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  %36 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %37 = icmp ne %struct.task_struct* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %40 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %41 = icmp ne %struct.task_struct* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %48

43:                                               ; preds = %38, %33
  %44 = load %struct.bts_tracer*, %struct.bts_tracer** %3, align 8
  %45 = call i32 @ds_suspend_bts_noirq(%struct.bts_tracer* %44)
  %46 = load %struct.bts_tracer*, %struct.bts_tracer** %3, align 8
  %47 = call i32 @ds_free_bts(%struct.bts_tracer* %46)
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %43, %42, %32
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @local_irq_restore(i64 %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %9
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @ds_suspend_bts_noirq(%struct.bts_tracer*) #1

declare dso_local i32 @ds_free_bts(%struct.bts_tracer*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
