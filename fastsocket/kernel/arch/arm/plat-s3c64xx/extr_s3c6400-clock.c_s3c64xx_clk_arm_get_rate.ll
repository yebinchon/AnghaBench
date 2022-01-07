; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c64xx/extr_s3c6400-clock.c_s3c64xx_clk_arm_get_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c64xx/extr_s3c6400-clock.c_s3c64xx_clk_arm_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@S3C_CLK_DIV0 = common dso_local global i32 0, align 4
@armclk_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @s3c64xx_clk_arm_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @s3c64xx_clk_arm_get_rate(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %2, align 8
  %5 = load %struct.clk*, %struct.clk** %2, align 8
  %6 = getelementptr inbounds %struct.clk, %struct.clk* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @clk_get_rate(i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load i32, i32* @S3C_CLK_DIV0, align 4
  %10 = call i32 @__raw_readl(i32 %9)
  %11 = load i32, i32* @armclk_mask, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load i64, i64* %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = udiv i64 %13, %16
  ret i64 %17
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @__raw_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
