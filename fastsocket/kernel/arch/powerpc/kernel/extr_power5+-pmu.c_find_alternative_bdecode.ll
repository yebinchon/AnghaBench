; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power5+-pmu.c_find_alternative_bdecode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power5+-pmu.c_find_alternative_bdecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@PM_PMCSEL_MSK = common dso_local global i32 0, align 4
@bytedecode_alternatives = common dso_local global i32** null, align 8
@PM_PMC_MSKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @find_alternative_bdecode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_alternative_bdecode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @PM_PMC_SH, align 4
  %10 = ashr i32 %8, %9
  %11 = load i32, i32* @PM_PMC_MSK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 4
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %1
  store i32 -1, i32* %2, align 4
  br label %114

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 5, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @PM_PMCSEL_MSK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %64, %19
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %67

28:                                               ; preds = %25
  %29 = load i32**, i32*** @bytedecode_alternatives, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %29, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %28
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @PM_PMC_MSKS, align 4
  %44 = load i32, i32* @PM_PMCSEL_MSK, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = and i32 %42, %46
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @PM_PMC_SH, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %47, %50
  %52 = load i32**, i32*** @bytedecode_alternatives, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %52, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %51, %61
  store i32 %62, i32* %2, align 4
  br label %114

63:                                               ; preds = %28
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %25

67:                                               ; preds = %25
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 13
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 14
  br i1 %75, label %76, label %82

76:                                               ; preds = %73, %70
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @PM_PMC_SH, align 4
  %79 = shl i32 2, %78
  %80 = add nsw i32 %77, %79
  %81 = add nsw i32 %80, 33
  store i32 %81, i32* %2, align 4
  br label %114

82:                                               ; preds = %73, %67
  %83 = load i32, i32* %4, align 4
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 46
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 47
  br i1 %90, label %91, label %97

91:                                               ; preds = %88, %85
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* @PM_PMC_SH, align 4
  %94 = shl i32 2, %93
  %95 = sub nsw i32 %92, %94
  %96 = sub nsw i32 %95, 33
  store i32 %96, i32* %2, align 4
  br label %114

97:                                               ; preds = %88, %82
  %98 = load i32, i32* %6, align 4
  %99 = icmp eq i32 %98, 16
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %101, 40
  br i1 %102, label %103, label %113

103:                                              ; preds = %100, %97
  %104 = load i32, i32* %3, align 4
  %105 = xor i32 %104, 56
  %106 = load i32, i32* @PM_PMC_MSKS, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %105, %107
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @PM_PMC_SH, align 4
  %111 = shl i32 %109, %110
  %112 = or i32 %108, %111
  store i32 %112, i32* %2, align 4
  br label %114

113:                                              ; preds = %100
  store i32 -1, i32* %2, align 4
  br label %114

114:                                              ; preds = %113, %103, %91, %76, %41, %18
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
