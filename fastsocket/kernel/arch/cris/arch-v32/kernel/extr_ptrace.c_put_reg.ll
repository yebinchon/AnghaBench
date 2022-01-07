; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_ptrace.c_put_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_ptrace.c_put_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@PT_EDA = common dso_local global i32 0, align 4
@PT_USP = common dso_local global i32 0, align 4
@PT_PPC = common dso_local global i32 0, align 4
@PT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @put_reg(%struct.task_struct* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @PT_EDA, align 4
  %10 = icmp ule i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %14 = call %struct.TYPE_4__* @task_pt_regs(%struct.task_struct* %13)
  %15 = bitcast %struct.TYPE_4__* %14 to i64*
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  store i64 %12, i64* %18, align 8
  br label %57

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @PT_USP, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i64 %24, i64* %27, align 8
  br label %56

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @PT_PPC, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %35 = call i64 @get_pseudo_pc(%struct.task_struct* %34)
  %36 = icmp ne i64 %33, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %40 = call %struct.TYPE_4__* @task_pt_regs(%struct.task_struct* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %32
  br label %55

43:                                               ; preds = %28
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @PT_MAX, align 4
  %46 = icmp ule i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %49 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @put_debugreg(i32 %50, i32 %51, i64 %52)
  store i32 %53, i32* %4, align 4
  br label %58

54:                                               ; preds = %43
  store i32 -1, i32* %4, align 4
  br label %58

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %23
  br label %57

57:                                               ; preds = %56, %11
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %54, %47
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_4__* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i64 @get_pseudo_pc(%struct.task_struct*) #1

declare dso_local i32 @put_debugreg(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
