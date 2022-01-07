; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_ptrace.c_ptrace_getaluop2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_ptrace.c_ptrace_getaluop2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.task_struct*, i64)* @ptrace_getaluop2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ptrace_getaluop2(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = and i64 %8, 33554432
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = and i64 %12, 255
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = lshr i64 %14, 8
  %16 = and i64 %15, 15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  store i32 3, i32* %7, align 4
  br label %43

18:                                               ; preds = %2
  %19 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = and i64 %20, 15
  %22 = call i64 @get_user_reg(%struct.task_struct* %19, i64 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %4, align 8
  %24 = and i64 %23, 16
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %28 = load i64, i64* %4, align 8
  %29 = lshr i64 %28, 8
  %30 = and i64 %29, 15
  %31 = call i64 @get_user_reg(%struct.task_struct* %27, i64 %30)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %6, align 4
  br label %38

33:                                               ; preds = %18
  %34 = load i64, i64* %4, align 8
  %35 = lshr i64 %34, 7
  %36 = and i64 %35, 31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %33, %26
  %39 = load i64, i64* %4, align 8
  %40 = lshr i64 %39, 5
  %41 = and i64 %40, 3
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %38, %11
  %44 = load i32, i32* %7, align 4
  switch i32 %44, label %71 [
    i32 0, label %45
    i32 1, label %50
    i32 2, label %55
    i32 3, label %60
  ]

45:                                               ; preds = %43
  %46 = load i32, i32* %6, align 4
  %47 = load i64, i64* %5, align 8
  %48 = zext i32 %46 to i64
  %49 = shl i64 %47, %48
  store i64 %49, i64* %5, align 8
  br label %71

50:                                               ; preds = %43
  %51 = load i32, i32* %6, align 4
  %52 = load i64, i64* %5, align 8
  %53 = zext i32 %51 to i64
  %54 = lshr i64 %52, %53
  store i64 %54, i64* %5, align 8
  br label %71

55:                                               ; preds = %43
  %56 = load i64, i64* %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = ashr i64 %56, %58
  store i64 %59, i64* %5, align 8
  br label %71

60:                                               ; preds = %43
  %61 = load i64, i64* %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = lshr i64 %61, %63
  %65 = load i64, i64* %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 32, %66
  %68 = zext i32 %67 to i64
  %69 = shl i64 %65, %68
  %70 = or i64 %64, %69
  store i64 %70, i64* %5, align 8
  br label %71

71:                                               ; preds = %43, %60, %55, %50, %45
  %72 = load i64, i64* %5, align 8
  ret i64 %72
}

declare dso_local i64 @get_user_reg(%struct.task_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
