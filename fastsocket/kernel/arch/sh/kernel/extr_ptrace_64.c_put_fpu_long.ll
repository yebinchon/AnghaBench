; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_ptrace_64.c_put_fpu_long.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_ptrace_64.c_put_fpu_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pt_regs = type { i32 }

@THREAD_SIZE = common dso_local global i32 0, align 4
@last_task_used_math = common dso_local global %struct.task_struct* null, align 8
@SR_FD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i64, i64)* @put_fpu_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_fpu_long(%struct.task_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pt_regs*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %9 = bitcast %struct.task_struct* %8 to i8*
  %10 = load i32, i32* @THREAD_SIZE, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = bitcast i8* %12 to %struct.pt_regs*
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %13, i64 -1
  store %struct.pt_regs* %14, %struct.pt_regs** %7, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %16 = call i32 @tsk_used_math(%struct.task_struct* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %3
  %19 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @fpinit(i32* %22)
  %24 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %25 = call i32 @set_stopped_child_used_math(%struct.task_struct* %24)
  br label %42

26:                                               ; preds = %3
  %27 = load %struct.task_struct*, %struct.task_struct** @last_task_used_math, align 8
  %28 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %29 = icmp eq %struct.task_struct* %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = call i32 (...) @enable_fpu()
  %32 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %33 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %34 = call i32 @save_fpu(%struct.task_struct* %32, %struct.pt_regs* %33)
  %35 = call i32 (...) @disable_fpu()
  store %struct.task_struct* null, %struct.task_struct** @last_task_used_math, align 8
  %36 = load i32, i32* @SR_FD, align 4
  %37 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %30, %26
  br label %42

42:                                               ; preds = %41, %18
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %45 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = bitcast %struct.TYPE_4__* %46 to i64*
  %48 = load i64, i64* %5, align 8
  %49 = udiv i64 %48, 8
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64 %43, i64* %50, align 4
  ret i32 0
}

declare dso_local i32 @tsk_used_math(%struct.task_struct*) #1

declare dso_local i32 @fpinit(i32*) #1

declare dso_local i32 @set_stopped_child_used_math(%struct.task_struct*) #1

declare dso_local i32 @enable_fpu(...) #1

declare dso_local i32 @save_fpu(%struct.task_struct*, %struct.pt_regs*) #1

declare dso_local i32 @disable_fpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
