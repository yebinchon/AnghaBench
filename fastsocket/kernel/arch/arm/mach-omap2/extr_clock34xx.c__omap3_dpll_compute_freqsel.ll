; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock34xx.c__omap3_dpll_compute_freqsel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock34xx.c__omap3_dpll_compute_freqsel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"clock: fint is %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"clock: unknown freqsel setting for %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i64)* @_omap3_dpll_compute_freqsel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_omap3_dpll_compute_freqsel(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.clk*, %struct.clk** %3, align 8
  %8 = getelementptr inbounds %struct.clk, %struct.clk* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = udiv i64 %13, %14
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i64, i64* %5, align 8
  %19 = icmp uge i64 %18, 750000
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = icmp ule i64 %21, 1000000
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 3, i32* %6, align 4
  br label %99

24:                                               ; preds = %20, %2
  %25 = load i64, i64* %5, align 8
  %26 = icmp ugt i64 %25, 1000000
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i64, i64* %5, align 8
  %29 = icmp ule i64 %28, 1250000
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 4, i32* %6, align 4
  br label %98

31:                                               ; preds = %27, %24
  %32 = load i64, i64* %5, align 8
  %33 = icmp ugt i64 %32, 1250000
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i64, i64* %5, align 8
  %36 = icmp ule i64 %35, 1500000
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 5, i32* %6, align 4
  br label %97

38:                                               ; preds = %34, %31
  %39 = load i64, i64* %5, align 8
  %40 = icmp ugt i64 %39, 1500000
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i64, i64* %5, align 8
  %43 = icmp ule i64 %42, 1750000
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 6, i32* %6, align 4
  br label %96

45:                                               ; preds = %41, %38
  %46 = load i64, i64* %5, align 8
  %47 = icmp ugt i64 %46, 1750000
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i64, i64* %5, align 8
  %50 = icmp ule i64 %49, 2100000
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 7, i32* %6, align 4
  br label %95

52:                                               ; preds = %48, %45
  %53 = load i64, i64* %5, align 8
  %54 = icmp ugt i64 %53, 7500000
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i64, i64* %5, align 8
  %57 = icmp ule i64 %56, 10000000
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 11, i32* %6, align 4
  br label %94

59:                                               ; preds = %55, %52
  %60 = load i64, i64* %5, align 8
  %61 = icmp ugt i64 %60, 10000000
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i64, i64* %5, align 8
  %64 = icmp ule i64 %63, 12500000
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 12, i32* %6, align 4
  br label %93

66:                                               ; preds = %62, %59
  %67 = load i64, i64* %5, align 8
  %68 = icmp ugt i64 %67, 12500000
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i64, i64* %5, align 8
  %71 = icmp ule i64 %70, 15000000
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 13, i32* %6, align 4
  br label %92

73:                                               ; preds = %69, %66
  %74 = load i64, i64* %5, align 8
  %75 = icmp ugt i64 %74, 15000000
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i64, i64* %5, align 8
  %78 = icmp ule i64 %77, 17500000
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 14, i32* %6, align 4
  br label %91

80:                                               ; preds = %76, %73
  %81 = load i64, i64* %5, align 8
  %82 = icmp ugt i64 %81, 17500000
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i64, i64* %5, align 8
  %85 = icmp ule i64 %84, 21000000
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 15, i32* %6, align 4
  br label %90

87:                                               ; preds = %83, %80
  %88 = load i64, i64* %4, align 8
  %89 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %88)
  br label %90

90:                                               ; preds = %87, %86
  br label %91

91:                                               ; preds = %90, %79
  br label %92

92:                                               ; preds = %91, %72
  br label %93

93:                                               ; preds = %92, %65
  br label %94

94:                                               ; preds = %93, %58
  br label %95

95:                                               ; preds = %94, %51
  br label %96

96:                                               ; preds = %95, %44
  br label %97

97:                                               ; preds = %96, %37
  br label %98

98:                                               ; preds = %97, %30
  br label %99

99:                                               ; preds = %98, %23
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @pr_debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
