; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_power4.c_power7_marked_instr_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_power4.c_power7_marked_instr_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPROFILE_PM_PMCSEL_MSK = common dso_local global i32 0, align 4
@OPROFILE_MAX_PMC_NUM = common dso_local global i32 0, align 4
@OPROFILE_PMSEL_FIELD_WIDTH = common dso_local global i32 0, align 4
@OPROFILE_PM_UNIT_MSK = common dso_local global i32 0, align 4
@OPROFILE_PM_UNIT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @power7_marked_instr_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power7_marked_instr_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %117, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %120

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @OPROFILE_PM_PMCSEL_MSK, align 4
  %13 = load i32, i32* @OPROFILE_MAX_PMC_NUM, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %13, %14
  %16 = load i32, i32* @OPROFILE_PMSEL_FIELD_WIDTH, align 4
  %17 = mul nsw i32 %15, %16
  %18 = shl i32 %12, %17
  %19 = and i32 %11, %18
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @OPROFILE_MAX_PMC_NUM, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %21, %22
  %24 = load i32, i32* @OPROFILE_PMSEL_FIELD_WIDTH, align 4
  %25 = mul nsw i32 %23, %24
  %26 = ashr i32 %20, %25
  %27 = sext i32 %26 to i64
  %28 = and i64 %27, -2
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @OPROFILE_PM_UNIT_MSK, align 4
  %32 = load i32, i32* @OPROFILE_PM_UNIT_SHIFT, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @OPROFILE_PMSEL_FIELD_WIDTH, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sub nsw i32 %32, %35
  %37 = shl i32 %31, %36
  %38 = and i32 %30, %37
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @OPROFILE_PM_UNIT_SHIFT, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @OPROFILE_PMSEL_FIELD_WIDTH, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sub nsw i32 %40, %43
  %45 = ashr i32 %39, %44
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %3, align 4
  %47 = ashr i32 %46, 4
  switch i32 %47, label %116 [
    i32 2, label %48
    i32 3, label %61
    i32 4, label %88
    i32 5, label %88
    i32 6, label %96
    i32 8, label %108
  ]

48:                                               ; preds = %10
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 3
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i1 [ true, %48 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %5, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %116

61:                                               ; preds = %10
  %62 = load i32, i32* %3, align 4
  %63 = icmp eq i32 %62, 60
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %5, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  br label %116

72:                                               ; preds = %61
  %73 = load i32, i32* %3, align 4
  %74 = icmp eq i32 %73, 62
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 1
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %5, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %116

83:                                               ; preds = %72
  %84 = load i32, i32* %5, align 4
  %85 = shl i32 1, %84
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %6, align 4
  br label %116

88:                                               ; preds = %10, %10
  %89 = load i32, i32* %4, align 4
  %90 = icmp eq i32 %89, 13
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %5, align 4
  %93 = shl i32 %91, %92
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %6, align 4
  br label %116

96:                                               ; preds = %10
  %97 = load i32, i32* %3, align 4
  %98 = icmp eq i32 %97, 100
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load i32, i32* %5, align 4
  %101 = icmp sge i32 %100, 2
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %5, align 4
  %104 = shl i32 %102, %103
  %105 = load i32, i32* %6, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %99, %96
  br label %116

108:                                              ; preds = %10
  %109 = load i32, i32* %4, align 4
  %110 = icmp eq i32 %109, 13
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %5, align 4
  %113 = shl i32 %111, %112
  %114 = load i32, i32* %6, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %10, %108, %107, %88, %83, %75, %64, %54
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %7

120:                                              ; preds = %7
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
