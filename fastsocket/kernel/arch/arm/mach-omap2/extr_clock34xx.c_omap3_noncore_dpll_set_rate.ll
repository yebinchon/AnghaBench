; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock34xx.c_omap3_noncore_dpll_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock34xx.c_omap3_noncore_dpll_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64, %struct.clk*, i64, i32, %struct.dpll_data* }
%struct.dpll_data = type { i32, i64, %struct.clk*, %struct.clk*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DPLL_LOW_POWER_BYPASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"clock: %s: set rate: entering bypass.\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"clock: %s: set rate: locking rate to %lu.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i64)* @omap3_noncore_dpll_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3_noncore_dpll_set_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpll_data*, align 8
  %9 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.clk* null, %struct.clk** %6, align 8
  %10 = load %struct.clk*, %struct.clk** %4, align 8
  %11 = icmp ne %struct.clk* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %154

18:                                               ; preds = %12
  %19 = load %struct.clk*, %struct.clk** %4, align 8
  %20 = getelementptr inbounds %struct.clk, %struct.clk* %19, i32 0, i32 4
  %21 = load %struct.dpll_data*, %struct.dpll_data** %20, align 8
  store %struct.dpll_data* %21, %struct.dpll_data** %8, align 8
  %22 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %23 = icmp ne %struct.dpll_data* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %154

27:                                               ; preds = %18
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.clk*, %struct.clk** %4, align 8
  %30 = call i64 @omap2_get_dpll_rate(%struct.clk* %29)
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %154

33:                                               ; preds = %27
  %34 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %35 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %34, i32 0, i32 2
  %36 = load %struct.clk*, %struct.clk** %35, align 8
  %37 = call i32 @omap2_clk_enable(%struct.clk* %36)
  %38 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %39 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %38, i32 0, i32 3
  %40 = load %struct.clk*, %struct.clk** %39, align 8
  %41 = call i32 @omap2_clk_enable(%struct.clk* %40)
  %42 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %43 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %42, i32 0, i32 2
  %44 = load %struct.clk*, %struct.clk** %43, align 8
  %45 = getelementptr inbounds %struct.clk, %struct.clk* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %33
  %50 = load %struct.clk*, %struct.clk** %4, align 8
  %51 = getelementptr inbounds %struct.clk, %struct.clk* %50, i32 0, i32 4
  %52 = load %struct.dpll_data*, %struct.dpll_data** %51, align 8
  %53 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @DPLL_LOW_POWER_BYPASS, align 4
  %56 = shl i32 1, %55
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %49
  %60 = load %struct.clk*, %struct.clk** %4, align 8
  %61 = getelementptr inbounds %struct.clk, %struct.clk* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.clk*, %struct.clk** %4, align 8
  %65 = call i32 @_omap3_noncore_dpll_bypass(%struct.clk* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %59
  %69 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %70 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %69, i32 0, i32 2
  %71 = load %struct.clk*, %struct.clk** %70, align 8
  store %struct.clk* %71, %struct.clk** %6, align 8
  br label %72

72:                                               ; preds = %68, %59
  br label %123

73:                                               ; preds = %49, %33
  %74 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %75 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.clk*, %struct.clk** %4, align 8
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @omap2_dpll_round_rate(%struct.clk* %80, i64 %81)
  br label %83

83:                                               ; preds = %79, %73
  %84 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %85 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %154

91:                                               ; preds = %83
  %92 = load %struct.clk*, %struct.clk** %4, align 8
  %93 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %94 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @_omap3_dpll_compute_freqsel(%struct.clk* %92, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %91
  %100 = call i32 @WARN_ON(i32 1)
  br label %101

101:                                              ; preds = %99, %91
  %102 = load %struct.clk*, %struct.clk** %4, align 8
  %103 = getelementptr inbounds %struct.clk, %struct.clk* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i64, i64* %5, align 8
  %106 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %104, i64 %105)
  %107 = load %struct.clk*, %struct.clk** %4, align 8
  %108 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %109 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %112 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @omap3_noncore_dpll_program(%struct.clk* %107, i32 %110, i32 %113, i32 %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %101
  %119 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %120 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %119, i32 0, i32 3
  %121 = load %struct.clk*, %struct.clk** %120, align 8
  store %struct.clk* %121, %struct.clk** %6, align 8
  br label %122

122:                                              ; preds = %118, %101
  br label %123

123:                                              ; preds = %122, %72
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %145, label %126

126:                                              ; preds = %123
  %127 = load %struct.clk*, %struct.clk** %4, align 8
  %128 = getelementptr inbounds %struct.clk, %struct.clk* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  %132 = load %struct.clk*, %struct.clk** %6, align 8
  %133 = call i32 @omap2_clk_enable(%struct.clk* %132)
  %134 = load %struct.clk*, %struct.clk** %4, align 8
  %135 = getelementptr inbounds %struct.clk, %struct.clk* %134, i32 0, i32 1
  %136 = load %struct.clk*, %struct.clk** %135, align 8
  %137 = call i32 @omap2_clk_disable(%struct.clk* %136)
  br label %138

138:                                              ; preds = %131, %126
  %139 = load %struct.clk*, %struct.clk** %4, align 8
  %140 = load %struct.clk*, %struct.clk** %6, align 8
  %141 = call i32 @clk_reparent(%struct.clk* %139, %struct.clk* %140)
  %142 = load i64, i64* %5, align 8
  %143 = load %struct.clk*, %struct.clk** %4, align 8
  %144 = getelementptr inbounds %struct.clk, %struct.clk* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %138, %123
  %146 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %147 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %146, i32 0, i32 3
  %148 = load %struct.clk*, %struct.clk** %147, align 8
  %149 = call i32 @omap2_clk_disable(%struct.clk* %148)
  %150 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %151 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %150, i32 0, i32 2
  %152 = load %struct.clk*, %struct.clk** %151, align 8
  %153 = call i32 @omap2_clk_disable(%struct.clk* %152)
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %145, %88, %32, %24, %15
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i64 @omap2_get_dpll_rate(%struct.clk*) #1

declare dso_local i32 @omap2_clk_enable(%struct.clk*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @_omap3_noncore_dpll_bypass(%struct.clk*) #1

declare dso_local i32 @omap2_dpll_round_rate(%struct.clk*, i64) #1

declare dso_local i32 @_omap3_dpll_compute_freqsel(%struct.clk*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @omap3_noncore_dpll_program(%struct.clk*, i32, i32, i32) #1

declare dso_local i32 @omap2_clk_disable(%struct.clk*) #1

declare dso_local i32 @clk_reparent(%struct.clk*, %struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
