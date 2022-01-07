; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_ptrace.c_get_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_ptrace.c_get_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PT_EDA = common dso_local global i32 0, align 4
@PT_USP = common dso_local global i32 0, align 4
@PT_PPC = common dso_local global i32 0, align 4
@PT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_reg(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @PT_EDA, align 4
  %8 = icmp ule i32 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = call i64 @task_pt_regs(%struct.task_struct* %10)
  %12 = inttoptr i64 %11 to i64*
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  br label %47

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @PT_USP, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %23 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %5, align 8
  br label %46

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @PT_PPC, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %32 = call i64 @get_pseudo_pc(%struct.task_struct* %31)
  store i64 %32, i64* %5, align 8
  br label %45

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @PT_MAX, align 4
  %36 = icmp ule i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %39 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @get_debugreg(i32 %40, i32 %41)
  store i64 %42, i64* %5, align 8
  br label %44

43:                                               ; preds = %33
  store i64 0, i64* %5, align 8
  br label %44

44:                                               ; preds = %43, %37
  br label %45

45:                                               ; preds = %44, %30
  br label %46

46:                                               ; preds = %45, %21
  br label %47

47:                                               ; preds = %46, %9
  %48 = load i64, i64* %5, align 8
  ret i64 %48
}

declare dso_local i64 @task_pt_regs(%struct.task_struct*) #1

declare dso_local i64 @get_pseudo_pc(%struct.task_struct*) #1

declare dso_local i64 @get_debugreg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
