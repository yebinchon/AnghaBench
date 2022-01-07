; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_clock.c_pll160_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_clock.c_pll160_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PLL160_MAX_FCCO = common dso_local global i32 0, align 4
@PLL160_MIN_FCCO = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@RATE_PROPAGATES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i32)* @pll160_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pll160_set_rate(%struct.clk* %0, i32 %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.clk*, %struct.clk** %3, align 8
  %14 = getelementptr inbounds %struct.clk, %struct.clk* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %167

21:                                               ; preds = %2
  %22 = load %struct.clk*, %struct.clk** %3, align 8
  %23 = call i32 @clk_reg_disable(%struct.clk* %22)
  %24 = load %struct.clk*, %struct.clk** %3, align 8
  %25 = call i32 @clk_reg_disable1(%struct.clk* %24)
  %26 = load %struct.clk*, %struct.clk** %3, align 8
  %27 = getelementptr inbounds %struct.clk, %struct.clk* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @__raw_readl(i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, -131072
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.clk*, %struct.clk** %3, align 8
  %34 = getelementptr inbounds %struct.clk, %struct.clk* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @__raw_writel(i32 %32, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %9, align 4
  %39 = srem i32 %37, %38
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @PLL160_MAX_FCCO, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %21
  %46 = load i32, i32* @PLL160_MAX_FCCO, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %21
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load %struct.clk*, %struct.clk** %3, align 8
  %52 = getelementptr inbounds %struct.clk, %struct.clk* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  store i32 0, i32* %10, align 4
  br label %167

53:                                               ; preds = %47
  %54 = load %struct.clk*, %struct.clk** %3, align 8
  %55 = call i32 @clk_reg_enable1(%struct.clk* %54)
  %56 = load %struct.clk*, %struct.clk** %3, align 8
  %57 = getelementptr inbounds %struct.clk, %struct.clk* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @__raw_readl(i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %53
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, 49152
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.clk*, %struct.clk** %3, align 8
  %68 = getelementptr inbounds %struct.clk, %struct.clk* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @__raw_writel(i32 %66, i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.clk*, %struct.clk** %3, align 8
  %73 = getelementptr inbounds %struct.clk, %struct.clk* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.clk*, %struct.clk** %3, align 8
  %75 = call i32 @clk_reg_enable(%struct.clk* %74)
  store i32 0, i32* %10, align 4
  br label %167

76:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %77

77:                                               ; preds = %90, %76
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 16
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %7, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* @PLL160_MIN_FCCO, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %93

87:                                               ; preds = %80
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %7, align 4
  %92 = shl i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %77

93:                                               ; preds = %86, %77
  %94 = load i32, i32* %7, align 4
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 %97, 1
  %99 = shl i32 %98, 11
  %100 = load i32, i32* %5, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %5, align 4
  br label %105

102:                                              ; preds = %93
  %103 = load i32, i32* %5, align 4
  %104 = or i32 %103, 16384
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %102, %96
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %7, align 4
  %108 = mul nsw i32 %106, %107
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %6, align 4
  %111 = sdiv i32 %110, %109
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = sub nsw i32 %112, 1
  %114 = shl i32 %113, 1
  %115 = load i32, i32* %5, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = or i32 %117, 65536
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.clk*, %struct.clk** %3, align 8
  %121 = getelementptr inbounds %struct.clk, %struct.clk* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @__raw_writel(i32 %119, i32 %122)
  %124 = load %struct.clk*, %struct.clk** %3, align 8
  %125 = call i64 @clk_wait_for_pll_lock(%struct.clk* %124)
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %147

127:                                              ; preds = %105
  %128 = load %struct.clk*, %struct.clk** %3, align 8
  %129 = call i32 @clk_reg_disable(%struct.clk* %128)
  %130 = load %struct.clk*, %struct.clk** %3, align 8
  %131 = call i32 @clk_reg_disable1(%struct.clk* %130)
  %132 = load %struct.clk*, %struct.clk** %3, align 8
  %133 = getelementptr inbounds %struct.clk, %struct.clk* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @__raw_readl(i32 %134)
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* %5, align 4
  %137 = and i32 %136, -131072
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = load %struct.clk*, %struct.clk** %3, align 8
  %140 = getelementptr inbounds %struct.clk, %struct.clk* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @__raw_writel(i32 %138, i32 %141)
  %143 = load %struct.clk*, %struct.clk** %3, align 8
  %144 = getelementptr inbounds %struct.clk, %struct.clk* %143, i32 0, i32 0
  store i32 0, i32* %144, align 8
  %145 = load i32, i32* @EFAULT, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %10, align 4
  br label %167

147:                                              ; preds = %105
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %9, align 4
  %150 = mul nsw i32 %148, %149
  %151 = load i32, i32* %7, align 4
  %152 = sdiv i32 %150, %151
  %153 = load %struct.clk*, %struct.clk** %3, align 8
  %154 = getelementptr inbounds %struct.clk, %struct.clk* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load %struct.clk*, %struct.clk** %3, align 8
  %156 = getelementptr inbounds %struct.clk, %struct.clk* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @RATE_PROPAGATES, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %147
  %162 = load %struct.clk*, %struct.clk** %3, align 8
  %163 = call i32 @propagate_rate(%struct.clk* %162)
  br label %164

164:                                              ; preds = %161, %147
  %165 = load %struct.clk*, %struct.clk** %3, align 8
  %166 = call i32 @clk_reg_enable(%struct.clk* %165)
  store i32 0, i32* %10, align 4
  br label %167

167:                                              ; preds = %164, %127, %63, %50, %20
  %168 = load i32, i32* %10, align 4
  ret i32 %168
}

declare dso_local i32 @clk_reg_disable(%struct.clk*) #1

declare dso_local i32 @clk_reg_disable1(%struct.clk*) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @clk_reg_enable1(%struct.clk*) #1

declare dso_local i32 @clk_reg_enable(%struct.clk*) #1

declare dso_local i64 @clk_wait_for_pll_lock(%struct.clk*) #1

declare dso_local i32 @propagate_rate(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
