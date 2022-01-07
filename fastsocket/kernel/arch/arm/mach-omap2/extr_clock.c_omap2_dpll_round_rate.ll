; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c_omap2_dpll_round_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c_omap2_dpll_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64, %struct.dpll_data* }
%struct.dpll_data = type { i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [63 x i8] c"clock: starting DPLL round_rate for clock %s, target rate %ld\0A\00", align 1
@DPLL_SCALE_FACTOR = common dso_local global i64 0, align 8
@DPLL_FINT_UNDERFLOW = common dso_local global i32 0, align 4
@DPLL_FINT_INVALID = common dso_local global i32 0, align 4
@DPLL_MULT_UNDERFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"clock: n = %d: m = %d: rate error is %d (new_rate = %ld)\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"clock: found new least error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"clock: error: target rate or tolerance too low\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"clock: final least error: e = %d, m = %d, n = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"clock: final rate: %ld  (target rate: %ld)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @omap2_dpll_round_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dpll_data*, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %17 = load %struct.clk*, %struct.clk** %4, align 8
  %18 = icmp ne %struct.clk* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.clk*, %struct.clk** %4, align 8
  %21 = getelementptr inbounds %struct.clk, %struct.clk* %20, i32 0, i32 1
  %22 = load %struct.dpll_data*, %struct.dpll_data** %21, align 8
  %23 = icmp ne %struct.dpll_data* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %2
  store i64 -1, i64* %3, align 8
  br label %171

25:                                               ; preds = %19
  %26 = load %struct.clk*, %struct.clk** %4, align 8
  %27 = getelementptr inbounds %struct.clk, %struct.clk* %26, i32 0, i32 1
  %28 = load %struct.dpll_data*, %struct.dpll_data** %27, align 8
  store %struct.dpll_data* %28, %struct.dpll_data** %16, align 8
  %29 = load %struct.clk*, %struct.clk** %4, align 8
  %30 = getelementptr inbounds %struct.clk, %struct.clk* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %32)
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.dpll_data*, %struct.dpll_data** %16, align 8
  %36 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %35, i32 0, i32 7
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DPLL_SCALE_FACTOR, align 8
  %41 = udiv i64 %39, %40
  %42 = udiv i64 %34, %41
  store i64 %42, i64* %11, align 8
  %43 = load %struct.dpll_data*, %struct.dpll_data** %16, align 8
  %44 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DPLL_SCALE_FACTOR, align 8
  %47 = mul i64 %45, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load %struct.dpll_data*, %struct.dpll_data** %16, align 8
  %50 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.dpll_data*, %struct.dpll_data** %16, align 8
  %52 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %134, %25
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.dpll_data*, %struct.dpll_data** %16, align 8
  %57 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp sle i32 %55, %58
  br i1 %59, label %60, label %137

60:                                               ; preds = %54
  %61 = load %struct.clk*, %struct.clk** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @_dpll_test_fint(%struct.clk* %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @DPLL_FINT_UNDERFLOW, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %137

68:                                               ; preds = %60
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @DPLL_FINT_INVALID, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %134

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %11, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %75, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %137

84:                                               ; preds = %74
  %85 = load i32, i32* %7, align 4
  %86 = load i64, i64* %5, align 8
  %87 = load %struct.dpll_data*, %struct.dpll_data** %16, align 8
  %88 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %87, i32 0, i32 7
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @_dpll_test_mult(i32* %6, i32 %85, i64* %12, i64 %86, i64 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @DPLL_MULT_UNDERFLOW, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %134

97:                                               ; preds = %84
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* %12, align 8
  %100 = sub i64 %98, %99
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i64, i64* %12, align 8
  %106 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %103, i32 %104, i64 %105)
  %107 = load i32, i32* %13, align 4
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %120, label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i64 @abs(i32 %111)
  %113 = load %struct.dpll_data*, %struct.dpll_data** %16, align 8
  %114 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = sub nsw i64 %112, %116
  %118 = trunc i64 %117 to i32
  %119 = icmp sge i32 %110, %118
  br i1 %119, label %120, label %133

120:                                              ; preds = %109, %97
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %13, align 4
  %125 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.dpll_data*, %struct.dpll_data** %16, align 8
  %128 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = icmp sle i32 %126, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %120
  br label %137

132:                                              ; preds = %120
  br label %133

133:                                              ; preds = %132, %109
  br label %134

134:                                              ; preds = %133, %96, %72
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %54

137:                                              ; preds = %131, %83, %67, %54
  %138 = load i32, i32* %13, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  store i64 -1, i64* %3, align 8
  br label %171

142:                                              ; preds = %137
  %143 = load i32, i32* %14, align 4
  %144 = load %struct.dpll_data*, %struct.dpll_data** %16, align 8
  %145 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %15, align 4
  %147 = load %struct.dpll_data*, %struct.dpll_data** %16, align 8
  %148 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %147, i32 0, i32 6
  store i32 %146, i32* %148, align 8
  %149 = load %struct.dpll_data*, %struct.dpll_data** %16, align 8
  %150 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %149, i32 0, i32 7
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %15, align 4
  %156 = call i64 @_dpll_compute_new_rate(i64 %153, i32 %154, i32 %155)
  %157 = load %struct.dpll_data*, %struct.dpll_data** %16, align 8
  %158 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %157, i32 0, i32 1
  store i64 %156, i64* %158, align 8
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %15, align 4
  %162 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %159, i32 %160, i32 %161)
  %163 = load %struct.dpll_data*, %struct.dpll_data** %16, align 8
  %164 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %5, align 8
  %167 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i64 %165, i64 %166)
  %168 = load %struct.dpll_data*, %struct.dpll_data** %16, align 8
  %169 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %3, align 8
  br label %171

171:                                              ; preds = %142, %140, %24
  %172 = load i64, i64* %3, align 8
  ret i64 %172
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @_dpll_test_fint(%struct.clk*, i32) #1

declare dso_local i32 @_dpll_test_mult(i32*, i32, i64*, i64, i64) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i64 @_dpll_compute_new_rate(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
