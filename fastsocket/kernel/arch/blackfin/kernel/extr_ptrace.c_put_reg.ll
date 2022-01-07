; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_ptrace.c_put_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_ptrace.c_put_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.pt_regs = type { i64, i64, i64 }

@THREAD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i32, i64)* @put_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_reg(%struct.task_struct* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pt_regs*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %10 = call i64 @task_stack_page(%struct.task_struct* %9)
  %11 = load i32, i32* @THREAD_SIZE, align 4
  %12 = sext i32 %11 to i64
  %13 = sub i64 %12, 24
  %14 = add i64 %10, %13
  %15 = inttoptr i64 %14 to %struct.pt_regs*
  store %struct.pt_regs* %15, %struct.pt_regs** %8, align 8
  %16 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %17 = bitcast %struct.pt_regs* %16 to i8*
  store i8* %17, i8** %7, align 8
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %35 [
    i32 130, label %19
    i32 129, label %26
    i32 128, label %27
  ]

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %25 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  br label %46

26:                                               ; preds = %3
  br label %46

27:                                               ; preds = %3
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  br label %46

35:                                               ; preds = %3
  %36 = load i32, i32* %5, align 4
  %37 = icmp sle i32 %36, 216
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i64, i64* %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = bitcast i8* %43 to i64*
  store i64 %39, i64* %44, align 8
  br label %45

45:                                               ; preds = %38, %35
  br label %46

46:                                               ; preds = %45, %27, %26, %19
  ret i32 0
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
