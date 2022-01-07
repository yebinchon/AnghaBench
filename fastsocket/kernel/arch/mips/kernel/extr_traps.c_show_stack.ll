; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_traps.c_show_stack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_traps.c_show_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.pt_regs = type { i64*, i64 }

@current = common dso_local global %struct.task_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_stack(%struct.task_struct* %0, i64* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.pt_regs, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i64*, i64** %4, align 8
  %7 = icmp ne i64* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load i64*, i64** %4, align 8
  %10 = ptrtoint i64* %9 to i64
  %11 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %5, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 29
  store i64 %10, i64* %13, align 8
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %5, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 31
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %5, i32 0, i32 1
  store i64 0, i64* %17, align 8
  br label %44

18:                                               ; preds = %2
  %19 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %20 = icmp ne %struct.task_struct* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %23 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %24 = icmp ne %struct.task_struct* %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %27 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %5, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 29
  store i64 %29, i64* %32, align 8
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %5, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 31
  store i64 0, i64* %35, align 8
  %36 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %5, i32 0, i32 1
  store i64 %39, i64* %40, align 8
  br label %43

41:                                               ; preds = %21, %18
  %42 = call i32 @prepare_frametrace(%struct.pt_regs* %5)
  br label %43

43:                                               ; preds = %41, %25
  br label %44

44:                                               ; preds = %43, %8
  %45 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %46 = call i32 @show_stacktrace(%struct.task_struct* %45, %struct.pt_regs* %5)
  ret void
}

declare dso_local i32 @prepare_frametrace(%struct.pt_regs*) #1

declare dso_local i32 @show_stacktrace(%struct.task_struct*, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
