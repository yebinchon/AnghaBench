; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power8-pmu.c_power8_get_constraint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power8-pmu.c_power8_get_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVENT_PMC_SHIFT = common dso_local global i32 0, align 4
@EVENT_PMC_MASK = common dso_local global i32 0, align 4
@EVENT_UNIT_SHIFT = common dso_local global i32 0, align 4
@EVENT_UNIT_MASK = common dso_local global i32 0, align 4
@EVENT_CACHE_SEL_SHIFT = common dso_local global i32 0, align 4
@EVENT_CACHE_SEL_MASK = common dso_local global i32 0, align 4
@CNST_NC_MASK = common dso_local global i64 0, align 8
@CNST_NC_VAL = common dso_local global i64 0, align 8
@EVENT_IS_L1 = common dso_local global i32 0, align 4
@CNST_L1_QUAL_MASK = common dso_local global i64 0, align 8
@EVENT_IS_MARKED = common dso_local global i32 0, align 4
@CNST_SAMPLE_MASK = common dso_local global i64 0, align 8
@EVENT_SAMPLE_SHIFT = common dso_local global i32 0, align 4
@CNST_FAB_MATCH_MASK = common dso_local global i64 0, align 8
@EVENT_THR_CTL_SHIFT = common dso_local global i32 0, align 4
@EVENT_THR_CMP_SHIFT = common dso_local global i32 0, align 4
@EVENT_THR_CMP_MASK = common dso_local global i32 0, align 4
@CNST_THRESH_MASK = common dso_local global i64 0, align 8
@EVENT_THRESH_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i64*)* @power8_get_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power8_get_constraint(i32 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @EVENT_PMC_SHIFT, align 4
  %17 = ashr i32 %15, %16
  %18 = load i32, i32* @EVENT_PMC_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @EVENT_UNIT_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = load i32, i32* @EVENT_UNIT_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @EVENT_CACHE_SEL_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = load i32, i32* @EVENT_CACHE_SEL_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  %34 = icmp ugt i32 %33, 6
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %149

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @CNST_PMC_MASK(i32 %37)
  %39 = load i64, i64* %11, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %11, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @CNST_PMC_VAL(i32 %41)
  %43 = load i64, i64* %12, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %12, align 8
  %45 = load i32, i32* %9, align 4
  %46 = icmp uge i32 %45, 5
  br i1 %46, label %47, label %54

47:                                               ; preds = %36
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 327930
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 393460
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 -1, i32* %4, align 4
  br label %149

54:                                               ; preds = %50, %47, %36
  br label %55

55:                                               ; preds = %54, %3
  %56 = load i32, i32* %9, align 4
  %57 = icmp ule i32 %56, 4
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i64, i64* @CNST_NC_MASK, align 8
  %60 = load i64, i64* %11, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* @CNST_NC_VAL, align 8
  %63 = load i64, i64* %12, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %12, align 8
  br label %65

65:                                               ; preds = %58, %55
  %66 = load i32, i32* %8, align 4
  %67 = icmp uge i32 %66, 6
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = icmp ule i32 %69, 9
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 -1, i32* %4, align 4
  br label %149

75:                                               ; preds = %71
  br label %90

76:                                               ; preds = %68, %65
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @EVENT_IS_L1, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load i64, i64* @CNST_L1_QUAL_MASK, align 8
  %83 = load i64, i64* %11, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %11, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i64 @CNST_L1_QUAL_VAL(i32 %85)
  %87 = load i64, i64* %12, align 8
  %88 = or i64 %87, %86
  store i64 %88, i64* %12, align 8
  br label %89

89:                                               ; preds = %81, %76
  br label %90

90:                                               ; preds = %89, %75
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @EVENT_IS_MARKED, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = load i64, i64* @CNST_SAMPLE_MASK, align 8
  %97 = load i64, i64* %11, align 8
  %98 = or i64 %97, %96
  store i64 %98, i64* %11, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @EVENT_SAMPLE_SHIFT, align 4
  %101 = ashr i32 %99, %100
  %102 = call i64 @CNST_SAMPLE_VAL(i32 %101)
  %103 = load i64, i64* %12, align 8
  %104 = or i64 %103, %102
  store i64 %104, i64* %12, align 8
  br label %105

105:                                              ; preds = %95, %90
  %106 = load i32, i32* %5, align 4
  %107 = call i64 @event_is_fab_match(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %105
  %110 = load i64, i64* @CNST_FAB_MATCH_MASK, align 8
  %111 = load i64, i64* %11, align 8
  %112 = or i64 %111, %110
  store i64 %112, i64* %11, align 8
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @EVENT_THR_CTL_SHIFT, align 4
  %115 = ashr i32 %113, %114
  %116 = call i64 @CNST_FAB_MATCH_VAL(i32 %115)
  %117 = load i64, i64* %12, align 8
  %118 = or i64 %117, %116
  store i64 %118, i64* %12, align 8
  br label %144

119:                                              ; preds = %105
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @EVENT_THR_CMP_SHIFT, align 4
  %122 = ashr i32 %120, %121
  %123 = load i32, i32* @EVENT_THR_CMP_MASK, align 4
  %124 = and i32 %122, %123
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = lshr i32 %125, 7
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %119
  %130 = load i32, i32* %13, align 4
  %131 = and i32 %130, 96
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i32 -1, i32* %4, align 4
  br label %149

134:                                              ; preds = %129, %119
  %135 = load i64, i64* @CNST_THRESH_MASK, align 8
  %136 = load i64, i64* %11, align 8
  %137 = or i64 %136, %135
  store i64 %137, i64* %11, align 8
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @EVENT_THRESH_SHIFT, align 4
  %140 = ashr i32 %138, %139
  %141 = call i64 @CNST_THRESH_VAL(i32 %140)
  %142 = load i64, i64* %12, align 8
  %143 = or i64 %142, %141
  store i64 %143, i64* %12, align 8
  br label %144

144:                                              ; preds = %134, %109
  %145 = load i64, i64* %11, align 8
  %146 = load i64*, i64** %6, align 8
  store i64 %145, i64* %146, align 8
  %147 = load i64, i64* %12, align 8
  %148 = load i64*, i64** %7, align 8
  store i64 %147, i64* %148, align 8
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %144, %133, %74, %53, %35
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i64 @CNST_PMC_MASK(i32) #1

declare dso_local i64 @CNST_PMC_VAL(i32) #1

declare dso_local i64 @CNST_L1_QUAL_VAL(i32) #1

declare dso_local i64 @CNST_SAMPLE_VAL(i32) #1

declare dso_local i64 @event_is_fab_match(i32) #1

declare dso_local i64 @CNST_FAB_MATCH_VAL(i32) #1

declare dso_local i64 @CNST_THRESH_VAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
