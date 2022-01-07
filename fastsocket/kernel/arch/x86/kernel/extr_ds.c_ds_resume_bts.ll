; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_resume_bts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_resume_bts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bts_tracer = type { %struct.TYPE_10__, %struct.TYPE_8__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.task_struct* }
%struct.task_struct = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ds_resume_bts(%struct.bts_tracer* %0) #0 {
  %2 = alloca %struct.bts_tracer*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.bts_tracer* %0, %struct.bts_tracer** %2, align 8
  %6 = load %struct.bts_tracer*, %struct.bts_tracer** %2, align 8
  %7 = icmp ne %struct.bts_tracer* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %64

9:                                                ; preds = %1
  %10 = load %struct.bts_tracer*, %struct.bts_tracer** %2, align 8
  %11 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.bts_tracer*, %struct.bts_tracer** %2, align 8
  %16 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.bts_tracer*, %struct.bts_tracer** %2, align 8
  %18 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load %struct.task_struct*, %struct.task_struct** %21, align 8
  store %struct.task_struct* %22, %struct.task_struct** %3, align 8
  %23 = load %struct.bts_tracer*, %struct.bts_tracer** %2, align 8
  %24 = getelementptr inbounds %struct.bts_tracer, %struct.bts_tracer* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %5, align 4
  %29 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %30 = icmp ne %struct.task_struct* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %9
  %32 = call i64 (...) @irqs_disabled()
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %31, %9
  %35 = phi i1 [ false, %9 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ON(i32 %36)
  %38 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %39 = icmp ne %struct.task_struct* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %42 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  br label %48

45:                                               ; preds = %34
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @get_debugctlmsr_on_cpu(i32 %46)
  br label %48

48:                                               ; preds = %45, %40
  %49 = phi i64 [ %44, %40 ], [ %47, %45 ]
  store i64 %49, i64* %4, align 8
  %50 = load %struct.bts_tracer*, %struct.bts_tracer** %2, align 8
  %51 = call i64 @ds_bts_control(%struct.bts_tracer* %50)
  %52 = load i64, i64* %4, align 8
  %53 = or i64 %52, %51
  store i64 %53, i64* %4, align 8
  %54 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %55 = icmp ne %struct.task_struct* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @update_task_debugctlmsr(%struct.task_struct* %57, i64 %58)
  br label %64

60:                                               ; preds = %48
  %61 = load i32, i32* %5, align 4
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @update_debugctlmsr_on_cpu(i32 %61, i64 %62)
  br label %64

64:                                               ; preds = %8, %60, %56
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @irqs_disabled(...) #1

declare dso_local i64 @get_debugctlmsr_on_cpu(i32) #1

declare dso_local i64 @ds_bts_control(%struct.bts_tracer*) #1

declare dso_local i32 @update_task_debugctlmsr(%struct.task_struct*, i64) #1

declare dso_local i32 @update_debugctlmsr_on_cpu(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
