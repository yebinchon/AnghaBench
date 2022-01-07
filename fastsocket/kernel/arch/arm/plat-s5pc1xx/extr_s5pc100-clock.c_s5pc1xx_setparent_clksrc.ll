; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s5pc1xx/extr_s5pc100-clock.c_s5pc1xx_setparent_clksrc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s5pc1xx/extr_s5pc100-clock.c_s5pc1xx_setparent_clksrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.clksrc_clk = type { i32, i32, i32, %struct.clk_sources* }
%struct.clk_sources = type { i32, %struct.clk** }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, %struct.clk*)* @s5pc1xx_setparent_clksrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5pc1xx_setparent_clksrc(%struct.clk* %0, %struct.clk* %1) #0 {
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
  %14 = getelementptr inbounds %struct.clksrc_clk, %struct.clksrc_clk* %13, i32 0, i32 3
  %15 = load %struct.clk_sources*, %struct.clk_sources** %14, align 8
  store %struct.clk_sources* %15, %struct.clk_sources** %7, align 8
  %16 = load %struct.clksrc_clk*, %struct.clksrc_clk** %6, align 8
  %17 = getelementptr inbounds %struct.clksrc_clk, %struct.clksrc_clk* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @__raw_readl(i32 %18)
  store i32 %19, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %39, %2
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.clk_sources*, %struct.clk_sources** %7, align 8
  %23 = getelementptr inbounds %struct.clk_sources, %struct.clk_sources* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load %struct.clk_sources*, %struct.clk_sources** %7, align 8
  %28 = getelementptr inbounds %struct.clk_sources, %struct.clk_sources* %27, i32 0, i32 1
  %29 = load %struct.clk**, %struct.clk*** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.clk*, %struct.clk** %29, i64 %31
  %33 = load %struct.clk*, %struct.clk** %32, align 8
  %34 = load %struct.clk*, %struct.clk** %5, align 8
  %35 = icmp eq %struct.clk* %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %9, align 4
  br label %42

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %20

42:                                               ; preds = %36, %20
  %43 = load i32, i32* %9, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  %46 = load %struct.clksrc_clk*, %struct.clksrc_clk** %6, align 8
  %47 = getelementptr inbounds %struct.clksrc_clk, %struct.clksrc_clk* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.clksrc_clk*, %struct.clksrc_clk** %6, align 8
  %54 = getelementptr inbounds %struct.clksrc_clk, %struct.clksrc_clk* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %52, %55
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.clksrc_clk*, %struct.clksrc_clk** %6, align 8
  %61 = getelementptr inbounds %struct.clksrc_clk, %struct.clksrc_clk* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @__raw_writel(i32 %59, i32 %62)
  store i32 0, i32* %3, align 4
  br label %67

64:                                               ; preds = %42
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %45
  %68 = load i32, i32* %3, align 4
  ret i32 %68
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
