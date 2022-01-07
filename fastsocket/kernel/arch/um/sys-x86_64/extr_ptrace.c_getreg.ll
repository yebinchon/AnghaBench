; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-x86_64/extr_ptrace.c_getreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-x86_64/extr_ptrace.c_getreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TIF_IA32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @getreg(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 -1, i64* %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %8 [
    i32 130, label %7
    i32 129, label %7
    i32 132, label %7
    i32 131, label %7
    i32 128, label %7
    i32 133, label %7
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2
  store i64 65535, i64* %5, align 8
  br label %8

8:                                                ; preds = %2, %7
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @PT_REG(i32* %11, i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = and i64 %14, %13
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %8
  %17 = load i64, i64* %5, align 8
  ret i64 %17
}

declare dso_local i64 @PT_REG(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
