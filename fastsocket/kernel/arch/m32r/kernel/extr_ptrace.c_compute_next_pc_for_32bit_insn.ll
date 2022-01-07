; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_ptrace.c_compute_next_pc_for_32bit_insn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_ptrace.c_compute_next_pc_for_32bit_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64*, %struct.task_struct*)* @compute_next_pc_for_32bit_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_next_pc_for_32bit_insn(i64 %0, i64 %1, i64* %2, %struct.task_struct* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.task_struct* %3, %struct.task_struct** %8, align 8
  %14 = load i64, i64* %5, align 8
  %15 = lshr i64 %14, 28
  %16 = and i64 %15, 15
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp eq i64 %17, 15
  br i1 %18, label %19, label %62

19:                                               ; preds = %4
  %20 = load i64, i64* %5, align 8
  %21 = lshr i64 %20, 24
  %22 = and i64 %21, 15
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  switch i64 %23, label %61 [
    i64 13, label %24
    i64 9, label %24
    i64 8, label %38
    i64 12, label %38
    i64 14, label %52
    i64 15, label %52
  ]

24:                                               ; preds = %19, %19
  %25 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %26 = call i32 @check_condition_bit(%struct.task_struct* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = shl i64 %29, 8
  %31 = ashr i64 %30, 6
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %6, align 8
  %33 = and i64 %32, -4
  %34 = load i64, i64* %11, align 8
  %35 = add i64 %33, %34
  %36 = load i64*, i64** %7, align 8
  store i64 %35, i64* %36, align 8
  br label %99

37:                                               ; preds = %24
  br label %61

38:                                               ; preds = %19, %19
  %39 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %40 = call i32 @check_condition_bit(%struct.task_struct* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i64, i64* %5, align 8
  %44 = shl i64 %43, 8
  %45 = ashr i64 %44, 6
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %6, align 8
  %47 = and i64 %46, -4
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %47, %48
  %50 = load i64*, i64** %7, align 8
  store i64 %49, i64* %50, align 8
  br label %99

51:                                               ; preds = %38
  br label %61

52:                                               ; preds = %19, %19
  %53 = load i64, i64* %5, align 8
  %54 = shl i64 %53, 8
  %55 = ashr i64 %54, 6
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %6, align 8
  %57 = and i64 %56, -4
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %57, %58
  %60 = load i64*, i64** %7, align 8
  store i64 %59, i64* %60, align 8
  br label %99

61:                                               ; preds = %19, %51, %37
  br label %95

62:                                               ; preds = %4
  %63 = load i64, i64* %9, align 8
  %64 = icmp eq i64 %63, 11
  br i1 %64, label %65, label %94

65:                                               ; preds = %62
  %66 = load i64, i64* %5, align 8
  %67 = lshr i64 %66, 20
  %68 = and i64 %67, 15
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  switch i64 %69, label %93 [
    i64 0, label %70
    i64 1, label %70
    i64 8, label %70
    i64 9, label %70
    i64 10, label %70
    i64 11, label %70
    i64 12, label %70
    i64 13, label %70
  ]

70:                                               ; preds = %65, %65, %65, %65, %65, %65, %65, %65
  %71 = load i64, i64* %5, align 8
  %72 = lshr i64 %71, 24
  %73 = and i64 %72, 15
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %5, align 8
  %75 = lshr i64 %74, 16
  %76 = and i64 %75, 15
  store i64 %76, i64* %13, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %81 = call i32 @check_condition_src(i64 %77, i64 %78, i64 %79, %struct.task_struct* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %70
  %84 = load i64, i64* %5, align 8
  %85 = shl i64 %84, 16
  %86 = ashr i64 %85, 14
  store i64 %86, i64* %11, align 8
  %87 = load i64, i64* %6, align 8
  %88 = and i64 %87, -4
  %89 = load i64, i64* %11, align 8
  %90 = add i64 %88, %89
  %91 = load i64*, i64** %7, align 8
  store i64 %90, i64* %91, align 8
  br label %99

92:                                               ; preds = %70
  br label %93

93:                                               ; preds = %65, %92
  br label %94

94:                                               ; preds = %93, %62
  br label %95

95:                                               ; preds = %94, %61
  %96 = load i64, i64* %6, align 8
  %97 = add i64 %96, 4
  %98 = load i64*, i64** %7, align 8
  store i64 %97, i64* %98, align 8
  br label %99

99:                                               ; preds = %95, %83, %52, %42, %28
  ret void
}

declare dso_local i32 @check_condition_bit(%struct.task_struct*) #1

declare dso_local i32 @check_condition_src(i64, i64, i64, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
