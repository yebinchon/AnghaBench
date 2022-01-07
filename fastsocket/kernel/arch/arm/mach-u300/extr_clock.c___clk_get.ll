; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_clock.c___clk_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_clock.c___clk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"MCLK\00", align 1
@U300_SYSCON_VBASE = common dso_local global i64 0, align 8
@U300_SYSCON_MMF0R = common dso_local global i64 0, align 8
@U300_SYSCON_MMCR = common dso_local global i64 0, align 8
@U300_SYSCON_MMCR_MMC_FB_CLK_SEL_ENABLE = common dso_local global i32 0, align 4
@U300_SYSCON_MMCR_MSPRO_FREQSEL_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"MSPRO\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__clk_get(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %2, align 8
  %4 = load %struct.clk*, %struct.clk** %2, align 8
  %5 = getelementptr inbounds %struct.clk, %struct.clk* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @strcmp(i32 %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* @U300_SYSCON_VBASE, align 8
  %11 = load i64, i64* @U300_SYSCON_MMF0R, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writew(i32 84, i64 %12)
  %14 = load i64, i64* @U300_SYSCON_VBASE, align 8
  %15 = load i64, i64* @U300_SYSCON_MMCR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readw(i64 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @U300_SYSCON_MMCR_MMC_FB_CLK_SEL_ENABLE, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @U300_SYSCON_MMCR_MSPRO_FREQSEL_ENABLE, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i64, i64* @U300_SYSCON_VBASE, align 8
  %28 = load i64, i64* @U300_SYSCON_MMCR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writew(i32 %26, i64 %29)
  br label %31

31:                                               ; preds = %9, %1
  %32 = load %struct.clk*, %struct.clk** %2, align 8
  %33 = getelementptr inbounds %struct.clk, %struct.clk* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @strcmp(i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %31
  %38 = load i64, i64* @U300_SYSCON_VBASE, align 8
  %39 = load i64, i64* @U300_SYSCON_MMCR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readw(i64 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* @U300_SYSCON_MMCR_MMC_FB_CLK_SEL_ENABLE, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* @U300_SYSCON_MMCR_MSPRO_FREQSEL_ENABLE, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i64, i64* @U300_SYSCON_VBASE, align 8
  %51 = load i64, i64* @U300_SYSCON_MMCR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writew(i32 %49, i64 %52)
  br label %54

54:                                               ; preds = %37, %31
  ret i32 1
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @readw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
