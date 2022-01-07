; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock24xx.c_omap2_reprogram_dpllcore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock24xx.c_omap2_reprogram_dpllcore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.clk = type { %struct.dpll_data* }
%struct.dpll_data = type { i32, i32, i32 }
%struct.prcm_config = type { i32, i32, i32 }

@dpll_ck = common dso_local global i32 0, align 4
@PLL_MOD = common dso_local global i32 0, align 4
@CM_CLKSEL2 = common dso_local global i32 0, align 4
@OMAP24XX_CORE_CLK_SRC_MASK = common dso_local global i32 0, align 4
@CORE_CLK_SRC_DPLL = common dso_local global i32 0, align 4
@CORE_CLK_SRC_DPLL_X2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@curr_prcm_set = common dso_local global %struct.TYPE_2__* null, align 8
@SDRC_RFR_CTRL_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i64)* @omap2_reprogram_dpllcore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_reprogram_dpllcore(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.prcm_config, align 4
  %14 = alloca %struct.dpll_data*, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %12, align 4
  %15 = call i32 @omap2xxx_clk_get_core_rate(i32* @dpll_ck)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @PLL_MOD, align 4
  %17 = load i32, i32* @CM_CLKSEL2, align 4
  %18 = call i8* @cm_read_mod_reg(i32 %16, i32 %17)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @OMAP24XX_CORE_CLK_SRC_MASK, align 4
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sdiv i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @CORE_CLK_SRC_DPLL, align 4
  %33 = call i32 @omap2xxx_sdrc_reprogram(i32 %32, i32 1)
  br label %180

34:                                               ; preds = %28, %2
  %35 = load i64, i64* %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @CORE_CLK_SRC_DPLL_X2, align 4
  %45 = call i32 @omap2xxx_sdrc_reprogram(i32 %44, i32 1)
  br label %179

46:                                               ; preds = %40, %34
  %47 = load i64, i64* %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %178

51:                                               ; preds = %46
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @omap2_dpllcore_round_rate(i64 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %5, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %181

61:                                               ; preds = %51
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_prcm_set, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %7, align 4
  br label %73

68:                                               ; preds = %61
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_prcm_set, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %71, 2
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %68, %64
  %74 = load %struct.clk*, %struct.clk** %4, align 8
  %75 = getelementptr inbounds %struct.clk, %struct.clk* %74, i32 0, i32 0
  %76 = load %struct.dpll_data*, %struct.dpll_data** %75, align 8
  store %struct.dpll_data* %76, %struct.dpll_data** %14, align 8
  %77 = load %struct.dpll_data*, %struct.dpll_data** %14, align 8
  %78 = icmp ne %struct.dpll_data* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %181

82:                                               ; preds = %73
  %83 = load %struct.dpll_data*, %struct.dpll_data** %14, align 8
  %84 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @__raw_readl(i32 %85)
  %87 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %13, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  %88 = load %struct.dpll_data*, %struct.dpll_data** %14, align 8
  %89 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.dpll_data*, %struct.dpll_data** %14, align 8
  %92 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %90, %93
  %95 = xor i32 %94, -1
  %96 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %13, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, %95
  store i32 %98, i32* %96, align 4
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_prcm_set, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sdiv i32 %101, 1000000
  %103 = sub nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* @PLL_MOD, align 4
  %105 = load i32, i32* @CM_CLKSEL2, align 4
  %106 = call i8* @cm_read_mod_reg(i32 %104, i32 %105)
  %107 = ptrtoint i8* %106 to i32
  %108 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %13, i32 0, i32 1
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* @OMAP24XX_CORE_CLK_SRC_MASK, align 4
  %110 = xor i32 %109, -1
  %111 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %13, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, %110
  store i32 %113, i32* %111, align 4
  %114 = load i64, i64* %5, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = icmp ugt i64 %114, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %82
  %119 = load i32, i32* @CORE_CLK_SRC_DPLL_X2, align 4
  %120 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %13, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %119
  store i32 %122, i32* %120, align 4
  %123 = load i64, i64* %5, align 8
  %124 = udiv i64 %123, 2
  %125 = udiv i64 %124, 1000000
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* @CORE_CLK_SRC_DPLL_X2, align 4
  store i32 %127, i32* %11, align 4
  br label %137

128:                                              ; preds = %82
  %129 = load i32, i32* @CORE_CLK_SRC_DPLL, align 4
  %130 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %13, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %129
  store i32 %132, i32* %130, align 4
  %133 = load i64, i64* %5, align 8
  %134 = udiv i64 %133, 1000000
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* @CORE_CLK_SRC_DPLL, align 4
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %128, %118
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.dpll_data*, %struct.dpll_data** %14, align 8
  %140 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @__ffs(i32 %141)
  %143 = shl i32 %138, %142
  %144 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %13, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %143
  store i32 %146, i32* %144, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.dpll_data*, %struct.dpll_data** %14, align 8
  %149 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @__ffs(i32 %150)
  %152 = shl i32 %147, %151
  %153 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %13, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %152
  store i32 %155, i32* %153, align 4
  %156 = load i32, i32* @SDRC_RFR_CTRL_BYPASS, align 4
  %157 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %13, i32 0, i32 2
  store i32 %156, i32* %157, align 4
  %158 = load i64, i64* %5, align 8
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_prcm_set, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = icmp eq i64 %158, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %137
  store i32 1, i32* %12, align 4
  br label %165

165:                                              ; preds = %164, %137
  %166 = load i32, i32* @CORE_CLK_SRC_DPLL_X2, align 4
  %167 = call i32 @omap2xxx_sdrc_reprogram(i32 %166, i32 1)
  %168 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %13, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %13, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %12, align 4
  %173 = call i32 @omap2_set_prcm(i32 %169, i32 %171, i32 %172)
  %174 = call i32 (...) @omap2xxx_sdrc_dll_is_unlocked()
  %175 = call i32 @omap2xxx_sdrc_init_params(i32 %174)
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @omap2xxx_sdrc_reprogram(i32 %176, i32 0)
  br label %178

178:                                              ; preds = %165, %46
  br label %179

179:                                              ; preds = %178, %43
  br label %180

180:                                              ; preds = %179, %31
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %180, %79, %58
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @omap2xxx_clk_get_core_rate(i32*) #1

declare dso_local i8* @cm_read_mod_reg(i32, i32) #1

declare dso_local i32 @omap2xxx_sdrc_reprogram(i32, i32) #1

declare dso_local i32 @omap2_dpllcore_round_rate(i64) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @omap2_set_prcm(i32, i32, i32) #1

declare dso_local i32 @omap2xxx_sdrc_init_params(i32) #1

declare dso_local i32 @omap2xxx_sdrc_dll_is_unlocked(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
