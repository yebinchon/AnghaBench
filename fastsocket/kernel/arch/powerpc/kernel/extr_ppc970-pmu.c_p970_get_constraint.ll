; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_ppc970-pmu.c_p970_get_constraint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_ppc970-pmu.c_p970_get_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@PM_UNIT_SH = common dso_local global i32 0, align 4
@PM_UNIT_MSK = common dso_local global i32 0, align 4
@PM_LASTUNIT = common dso_local global i32 0, align 4
@unit_cons = common dso_local global i64** null, align 8
@PM_BYTE_SH = common dso_local global i32 0, align 4
@PM_BYTE_MSK = common dso_local global i32 0, align 4
@PM_SPCSEL_SH = common dso_local global i32 0, align 4
@PM_SPCSEL_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i64*)* @p970_get_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p970_get_constraint(i32 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 -1, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @PM_PMC_SH, align 4
  %18 = ashr i32 %16, %17
  %19 = load i32, i32* @PM_PMC_MSK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 8
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %142

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, 1
  %30 = mul nsw i32 %29, 2
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = shl i32 2, %31
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %13, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %13, align 8
  %36 = load i32, i32* %11, align 4
  %37 = shl i32 1, %36
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %14, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %14, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 1
  %43 = ashr i32 %42, 1
  %44 = and i32 %43, 1
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %27, %3
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @PM_UNIT_SH, align 4
  %48 = ashr i32 %46, %47
  %49 = load i32, i32* @PM_UNIT_MSK, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %104

53:                                               ; preds = %45
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @PM_LASTUNIT, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 -1, i32* %4, align 4
  br label %142

58:                                               ; preds = %53
  %59 = load i64**, i64*** @unit_cons, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64*, i64** %59, i64 %61
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %13, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %13, align 8
  %68 = load i64**, i64*** @unit_cons, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64*, i64** %68, i64 %70
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %14, align 8
  %76 = or i64 %75, %74
  store i64 %76, i64* %14, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @PM_BYTE_SH, align 4
  %79 = ashr i32 %77, %78
  %80 = load i32, i32* @PM_BYTE_MSK, align 4
  %81 = and i32 %79, %80
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %58
  %85 = load i32, i32* %9, align 4
  %86 = and i32 %85, 1
  store i32 %86, i32* %15, align 4
  br label %87

87:                                               ; preds = %84, %58
  %88 = load i32, i32* %9, align 4
  %89 = mul nsw i32 4, %88
  %90 = sub nsw i32 28, %89
  %91 = zext i32 %90 to i64
  %92 = shl i64 15, %91
  %93 = load i64, i64* %13, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %13, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = load i32, i32* %9, align 4
  %98 = mul nsw i32 4, %97
  %99 = sub nsw i32 28, %98
  %100 = zext i32 %99 to i64
  %101 = shl i64 %96, %100
  %102 = load i64, i64* %14, align 8
  %103 = or i64 %102, %101
  store i64 %103, i64* %14, align 8
  br label %104

104:                                              ; preds = %87, %45
  %105 = load i32, i32* %15, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i64, i64* %13, align 8
  %109 = or i64 %108, 549755813888
  store i64 %109, i64* %13, align 8
  %110 = load i64, i64* %14, align 8
  %111 = or i64 %110, 68719476736
  store i64 %111, i64* %14, align 8
  br label %121

112:                                              ; preds = %104
  %113 = load i32, i32* %15, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i64, i64* %13, align 8
  %117 = or i64 %116, 34359738368
  store i64 %117, i64* %13, align 8
  %118 = load i64, i64* %14, align 8
  %119 = or i64 %118, 4294967296
  store i64 %119, i64* %14, align 8
  br label %120

120:                                              ; preds = %115, %112
  br label %121

121:                                              ; preds = %120, %107
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @PM_SPCSEL_SH, align 4
  %124 = ashr i32 %122, %123
  %125 = load i32, i32* @PM_SPCSEL_MSK, align 4
  %126 = and i32 %124, %125
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %121
  %130 = load i64, i64* %13, align 8
  %131 = or i64 %130, 844424930131968
  store i64 %131, i64* %13, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = shl i64 %133, 48
  %135 = load i64, i64* %14, align 8
  %136 = or i64 %135, %134
  store i64 %136, i64* %14, align 8
  br label %137

137:                                              ; preds = %129, %121
  %138 = load i64, i64* %13, align 8
  %139 = load i64*, i64** %6, align 8
  store i64 %138, i64* %139, align 8
  %140 = load i64, i64* %14, align 8
  %141 = load i64*, i64** %7, align 8
  store i64 %140, i64* %141, align 8
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %137, %57, %26
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
