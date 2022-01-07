; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_ptrace.c_ptrace_getldrop2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_ptrace.c_ptrace_getldrop2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.task_struct*, i64)* @ptrace_getldrop2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ptrace_getldrop2(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = and i64 %9, 15
  %11 = call i64 @get_user_reg(%struct.task_struct* %8, i64 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = lshr i64 %12, 7
  %14 = and i64 %13, 31
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i64, i64* %4, align 8
  %17 = lshr i64 %16, 5
  %18 = and i64 %17, 3
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %47 [
    i32 0, label %21
    i32 1, label %26
    i32 2, label %31
    i32 3, label %36
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load i64, i64* %5, align 8
  %24 = zext i32 %22 to i64
  %25 = shl i64 %23, %24
  store i64 %25, i64* %5, align 8
  br label %47

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = load i64, i64* %5, align 8
  %29 = zext i32 %27 to i64
  %30 = lshr i64 %28, %29
  store i64 %30, i64* %5, align 8
  br label %47

31:                                               ; preds = %2
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = ashr i64 %32, %34
  store i64 %35, i64* %5, align 8
  br label %47

36:                                               ; preds = %2
  %37 = load i64, i64* %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = lshr i64 %37, %39
  %41 = load i64, i64* %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 32, %42
  %44 = zext i32 %43 to i64
  %45 = shl i64 %41, %44
  %46 = or i64 %40, %45
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %2, %36, %31, %26, %21
  %48 = load i64, i64* %5, align 8
  ret i64 %48
}

declare dso_local i64 @get_user_reg(%struct.task_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
