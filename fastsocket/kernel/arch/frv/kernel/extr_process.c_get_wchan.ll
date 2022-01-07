; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_process.c_get_wchan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_process.c_get_wchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.pt_regs* }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@TASK_RUNNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_wchan(%struct.task_struct* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = icmp ne %struct.task_struct* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %14 = icmp eq %struct.task_struct* %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TASK_RUNNING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %11, %1
  store i64 0, i64* %2, align 8
  br label %67

22:                                               ; preds = %15
  %23 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i64 1
  %25 = ptrtoint %struct.task_struct* %24 to i64
  store i64 %25, i64* %7, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %27 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %5, align 8
  %30 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %31 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load %struct.pt_regs*, %struct.pt_regs** %32, align 8
  store %struct.pt_regs* %33, %struct.pt_regs** %4, align 8
  br label %34

34:                                               ; preds = %62, %22
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %41 = ptrtoint %struct.pt_regs* %40 to i64
  %42 = icmp uge i64 %39, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i64, i64* %5, align 8
  %45 = and i64 %44, 3
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %38, %34
  store i64 0, i64* %2, align 8
  br label %67

48:                                               ; preds = %43
  %49 = load i64, i64* %5, align 8
  %50 = inttoptr i64 %49 to i64*
  %51 = getelementptr inbounds i64, i64* %50, i64 2
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @in_sched_functions(i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %48
  %57 = load i64, i64* %6, align 8
  store i64 %57, i64* %2, align 8
  br label %67

58:                                               ; preds = %48
  %59 = load i64, i64* %5, align 8
  %60 = inttoptr i64 %59 to i64*
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  %65 = icmp slt i32 %63, 16
  br i1 %65, label %34, label %66

66:                                               ; preds = %62
  store i64 0, i64* %2, align 8
  br label %67

67:                                               ; preds = %66, %56, %47, %21
  %68 = load i64, i64* %2, align 8
  ret i64 %68
}

declare dso_local i32 @in_sched_functions(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
