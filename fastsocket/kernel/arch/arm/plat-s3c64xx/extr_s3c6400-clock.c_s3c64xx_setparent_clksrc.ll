; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c64xx/extr_s3c6400-clock.c_s3c64xx_setparent_clksrc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c64xx/extr_s3c6400-clock.c_s3c64xx_setparent_clksrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.clk* }
%struct.clksrc_clk = type { i32, i32, %struct.clk_sources* }
%struct.clk_sources = type { i32, %struct.clk** }

@S3C_CLK_SRC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, %struct.clk*)* @s3c64xx_setparent_clksrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c64xx_setparent_clksrc(%struct.clk* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca %struct.clksrc_clk*, align 8
  %7 = alloca %struct.clk_sources*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %11 = load %struct.clk*, %struct.clk** %4, align 8
  %12 = call %struct.clksrc_clk* @to_clksrc(%struct.clk* %11)
  store %struct.clksrc_clk* %12, %struct.clksrc_clk** %6, align 8
  %13 = load %struct.clksrc_clk*, %struct.clksrc_clk** %6, align 8
  %14 = getelementptr inbounds %struct.clksrc_clk, %struct.clksrc_clk* %13, i32 0, i32 2
  %15 = load %struct.clk_sources*, %struct.clk_sources** %14, align 8
  store %struct.clk_sources* %15, %struct.clk_sources** %7, align 8
  %16 = load i32, i32* @S3C_CLK_SRC, align 4
  %17 = call i32 @__raw_readl(i32 %16)
  store i32 %17, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %37, %2
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.clk_sources*, %struct.clk_sources** %7, align 8
  %21 = getelementptr inbounds %struct.clk_sources, %struct.clk_sources* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load %struct.clk_sources*, %struct.clk_sources** %7, align 8
  %26 = getelementptr inbounds %struct.clk_sources, %struct.clk_sources* %25, i32 0, i32 1
  %27 = load %struct.clk**, %struct.clk*** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.clk*, %struct.clk** %27, i64 %29
  %31 = load %struct.clk*, %struct.clk** %30, align 8
  %32 = load %struct.clk*, %struct.clk** %5, align 8
  %33 = icmp eq %struct.clk* %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %9, align 4
  br label %40

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %18

40:                                               ; preds = %34, %18
  %41 = load i32, i32* %9, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %40
  %44 = load %struct.clksrc_clk*, %struct.clksrc_clk** %6, align 8
  %45 = getelementptr inbounds %struct.clksrc_clk, %struct.clksrc_clk* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.clksrc_clk*, %struct.clksrc_clk** %6, align 8
  %52 = getelementptr inbounds %struct.clksrc_clk, %struct.clksrc_clk* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %50, %53
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @S3C_CLK_SRC, align 4
  %59 = call i32 @__raw_writel(i32 %57, i32 %58)
  %60 = load %struct.clk*, %struct.clk** %5, align 8
  %61 = load %struct.clk*, %struct.clk** %4, align 8
  %62 = getelementptr inbounds %struct.clk, %struct.clk* %61, i32 0, i32 0
  store %struct.clk* %60, %struct.clk** %62, align 8
  store i32 0, i32* %3, align 4
  br label %66

63:                                               ; preds = %40
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %63, %43
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.clksrc_clk* @to_clksrc(%struct.clk*) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
