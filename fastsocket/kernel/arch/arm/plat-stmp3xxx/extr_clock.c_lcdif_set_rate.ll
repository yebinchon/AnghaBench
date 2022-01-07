; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_clock.c_lcdif_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_clock.c_lcdif_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Programming PFD=%u,DIV=%u ref_pix=%uMHz PIXCLK=%uMHz cycle=%u.%03uns\0A\00", align 1
@REGS_CLKCTRL_BASE = common dso_local global i64 0, align 8
@HW_CLKCTRL_FRAC = common dso_local global i64 0, align 8
@BM_CLKCTRL_FRAC_PIXFRAC = common dso_local global i32 0, align 4
@CLKCTRL_FRAC_PIXFRAC = common dso_local global i32 0, align 4
@BM_CLKCTRL_FRAC_CLKGATEPIX = common dso_local global i32 0, align 4
@BM_CLKCTRL_PIX_DIV = common dso_local global i32 0, align 4
@BM_CLKCTRL_PIX_CLKGATE = common dso_local global i32 0, align 4
@CLKCTRL_PIX_DIV = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@HW_CLKCTRL_CLKSEQ = common dso_local global i64 0, align 8
@BM_CLKCTRL_CLKSEQ_BYPASS_PIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i32)* @lcdif_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcdif_set_rate(%struct.clk* %0, i32 %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = sdiv i32 1000000, %17
  store i32 %18, i32* %6, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %7, align 4
  br label %19

19:                                               ; preds = %82, %2
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 256
  br i1 %21, label %22, label %85

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 6, %23
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 25, %25
  %27 = icmp sge i32 %24, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 108, %29
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 875, %31
  %33 = icmp sle i32 %30, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %22
  br label %85

38:                                               ; preds = %22
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  br label %82

42:                                               ; preds = %38
  %43 = load %struct.clk*, %struct.clk** %3, align 8
  %44 = getelementptr inbounds %struct.clk, %struct.clk* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %47, 1000
  %49 = mul nsw i32 %48, 18
  %50 = sdiv i32 %49, 2
  %51 = load i32, i32* %6, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %7, align 4
  %54 = mul nsw i32 1000, %53
  %55 = add nsw i32 %52, %54
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* %7, align 4
  %58 = mul nsw i32 1000, %57
  %59 = sdiv i32 %56, %58
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 18
  br i1 %61, label %65, label %62

62:                                               ; preds = %42
  %63 = load i32, i32* %12, align 4
  %64 = icmp sgt i32 %63, 35
  br i1 %64, label %65, label %68

65:                                               ; preds = %62, %42
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %189

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 6250, %69
  %71 = load i32, i32* %12, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sdiv i32 %72, 27
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp sle i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %77, %68
  br label %82

82:                                               ; preds = %81, %41
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %19

85:                                               ; preds = %37, %19
  %86 = load i32, i32* %7, align 4
  %87 = icmp sge i32 %86, 256
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %94

91:                                               ; preds = %88, %85
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %189

94:                                               ; preds = %88
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = sdiv i32 8640, %97
  %99 = load i32, i32* %11, align 4
  %100 = sdiv i32 8640, %99
  %101 = load i32, i32* %10, align 4
  %102 = sdiv i32 %100, %101
  %103 = load i32, i32* %9, align 4
  %104 = sdiv i32 %103, 1000
  %105 = load i32, i32* %9, align 4
  %106 = srem i32 %105, 1000
  %107 = call i32 @pr_debug(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %96, i32 %98, i32 %102, i32 %104, i32 %106)
  %108 = load i64, i64* @REGS_CLKCTRL_BASE, align 8
  %109 = load i64, i64* @HW_CLKCTRL_FRAC, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @__raw_readl(i64 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* @BM_CLKCTRL_FRAC_PIXFRAC, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %8, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @CLKCTRL_FRAC_PIXFRAC, align 4
  %118 = call i32 @BF(i32 %116, i32 %117)
  %119 = load i32, i32* %8, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i64, i64* @REGS_CLKCTRL_BASE, align 8
  %123 = load i64, i64* @HW_CLKCTRL_FRAC, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @__raw_writel(i32 %121, i64 %124)
  %126 = load i32, i32* @BM_CLKCTRL_FRAC_CLKGATEPIX, align 4
  %127 = load i64, i64* @REGS_CLKCTRL_BASE, align 8
  %128 = load i64, i64* @HW_CLKCTRL_FRAC, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @stmp3xxx_clearl(i32 %126, i64 %129)
  %131 = load %struct.clk*, %struct.clk** %3, align 8
  %132 = getelementptr inbounds %struct.clk, %struct.clk* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @__raw_readl(i64 %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* @BM_CLKCTRL_PIX_DIV, align 4
  %136 = load i32, i32* @BM_CLKCTRL_PIX_CLKGATE, align 4
  %137 = or i32 %135, %136
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %8, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @CLKCTRL_PIX_DIV, align 4
  %143 = call i32 @BF(i32 %141, i32 %142)
  %144 = load i32, i32* %8, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.clk*, %struct.clk** %3, align 8
  %148 = getelementptr inbounds %struct.clk, %struct.clk* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @__raw_writel(i32 %146, i64 %149)
  %151 = load %struct.clk*, %struct.clk** %3, align 8
  %152 = getelementptr inbounds %struct.clk, %struct.clk* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %175

155:                                              ; preds = %94
  store i32 10000, i32* %16, align 4
  br label %156

156:                                              ; preds = %165, %155
  %157 = load i32, i32* %16, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %156
  %160 = load %struct.clk*, %struct.clk** %3, align 8
  %161 = call i32 @clk_is_busy(%struct.clk* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %159
  br label %168

164:                                              ; preds = %159
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %16, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %16, align 4
  br label %156

168:                                              ; preds = %163, %156
  %169 = load i32, i32* %16, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* @ETIMEDOUT, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %5, align 4
  br label %189

174:                                              ; preds = %168
  br label %175

175:                                              ; preds = %174, %94
  %176 = load i64, i64* @REGS_CLKCTRL_BASE, align 8
  %177 = load i64, i64* @HW_CLKCTRL_CLKSEQ, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @__raw_readl(i64 %178)
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* @BM_CLKCTRL_CLKSEQ_BYPASS_PIX, align 4
  %181 = xor i32 %180, -1
  %182 = load i32, i32* %8, align 4
  %183 = and i32 %182, %181
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %8, align 4
  %185 = load i64, i64* @REGS_CLKCTRL_BASE, align 8
  %186 = load i64, i64* @HW_CLKCTRL_CLKSEQ, align 8
  %187 = add nsw i64 %185, %186
  %188 = call i32 @__raw_writel(i32 %184, i64 %187)
  br label %189

189:                                              ; preds = %175, %171, %91, %65
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @BF(i32, i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @stmp3xxx_clearl(i32, i64) #1

declare dso_local i32 @clk_is_busy(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
