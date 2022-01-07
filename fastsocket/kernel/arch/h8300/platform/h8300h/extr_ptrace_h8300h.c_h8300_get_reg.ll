; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/platform/h8300h/extr_ptrace_h8300h.c_h8300_get_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/platform/h8300h/extr_ptrace_h8300h.c_h8300_get_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@h8300_register_offset = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @h8300_get_reg(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %28 [
    i32 128, label %7
    i32 129, label %14
  ]

7:                                                ; preds = %2
  %8 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = add i64 %12, 16
  store i64 %13, i64* %3, align 8
  br label %41

14:                                               ; preds = %2
  %15 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64*, i64** @h8300_register_offset, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %18, %23
  %25 = inttoptr i64 %24 to i16*
  %26 = load i16, i16* %25, align 2
  %27 = zext i16 %26 to i64
  store i64 %27, i64* %3, align 8
  br label %41

28:                                               ; preds = %2
  %29 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** @h8300_register_offset, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %32, %37
  %39 = inttoptr i64 %38 to i64*
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %3, align 8
  br label %41

41:                                               ; preds = %28, %14, %7
  %42 = load i64, i64* %3, align 8
  ret i64 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
