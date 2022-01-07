; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx2/extr_clock_imx27.c_set_rate_per.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx2/extr_clock_imx27.c_set_rate_per.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CCM_PCDR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i64)* @set_rate_per to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_rate_per(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.clk*, %struct.clk** %4, align 8
  %10 = getelementptr inbounds %struct.clk, %struct.clk* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @clk_get_rate(i32 %11)
  store i64 %12, i64* %8, align 8
  %13 = load %struct.clk*, %struct.clk** %4, align 8
  %14 = getelementptr inbounds %struct.clk, %struct.clk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.clk*, %struct.clk** %4, align 8
  %19 = getelementptr inbounds %struct.clk, %struct.clk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %68

25:                                               ; preds = %17
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %5, align 8
  %28 = udiv i64 %26, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp sgt i32 %30, 64
  br i1 %31, label %42, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = udiv i64 %36, %38
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35, %32, %25
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %68

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @CCM_PCDR1, align 4
  %49 = call i32 @__raw_readl(i32 %48)
  %50 = load %struct.clk*, %struct.clk** %4, align 8
  %51 = getelementptr inbounds %struct.clk, %struct.clk* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 3
  %54 = shl i32 63, %53
  %55 = xor i32 %54, -1
  %56 = and i32 %49, %55
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.clk*, %struct.clk** %4, align 8
  %59 = getelementptr inbounds %struct.clk, %struct.clk* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 3
  %62 = shl i32 %57, %61
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @CCM_PCDR1, align 4
  %67 = call i32 @__raw_writel(i32 %65, i32 %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %45, %42, %22
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
