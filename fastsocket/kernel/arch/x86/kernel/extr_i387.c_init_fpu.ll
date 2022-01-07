; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_i387.c_init_fpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_i387.c_init_fpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fpu = type { i32 }

@HAVE_HWFP = common dso_local global i64 0, align 8
@current = common dso_local global %struct.task_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_fpu(%struct.task_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %6 = call i64 @tsk_used_math(%struct.task_struct* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load i64, i64* @HAVE_HWFP, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %14 = icmp eq %struct.task_struct* %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %17 = call i32 @unlazy_fpu(%struct.task_struct* %16)
  br label %18

18:                                               ; preds = %15, %11, %8
  store i32 0, i32* %2, align 4
  br label %37

19:                                               ; preds = %1
  %20 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = bitcast i32* %22 to %struct.fpu*
  %24 = call i32 @fpu_alloc(%struct.fpu* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %37

29:                                               ; preds = %19
  %30 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %31 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = bitcast i32* %32 to %struct.fpu*
  %34 = call i32 @fpu_finit(%struct.fpu* %33)
  %35 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %36 = call i32 @set_stopped_child_used_math(%struct.task_struct* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %29, %27, %18
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @tsk_used_math(%struct.task_struct*) #1

declare dso_local i32 @unlazy_fpu(%struct.task_struct*) #1

declare dso_local i32 @fpu_alloc(%struct.fpu*) #1

declare dso_local i32 @fpu_finit(%struct.fpu*) #1

declare dso_local i32 @set_stopped_child_used_math(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
