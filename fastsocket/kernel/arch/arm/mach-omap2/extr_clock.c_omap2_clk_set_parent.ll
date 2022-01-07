; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c_omap2_clk_set_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c_omap2_clk_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CONFIG_PARTICIPANT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"clock: set parent of %s to %s (new rate %ld)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap2_clk_set_parent(%struct.clk* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %9 = load %struct.clk*, %struct.clk** %4, align 8
  %10 = getelementptr inbounds %struct.clk, %struct.clk* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @CONFIG_PARTICIPANT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %94

18:                                               ; preds = %2
  %19 = load %struct.clk*, %struct.clk** %4, align 8
  %20 = getelementptr inbounds %struct.clk, %struct.clk* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %94

26:                                               ; preds = %18
  %27 = load %struct.clk*, %struct.clk** %5, align 8
  %28 = load %struct.clk*, %struct.clk** %4, align 8
  %29 = call i32 @_omap2_clksel_get_src_field(%struct.clk* %27, %struct.clk* %28, i32* %6)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %94

35:                                               ; preds = %26
  %36 = load %struct.clk*, %struct.clk** %4, align 8
  %37 = getelementptr inbounds %struct.clk, %struct.clk* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @__raw_readl(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.clk*, %struct.clk** %4, align 8
  %41 = getelementptr inbounds %struct.clk, %struct.clk* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.clk*, %struct.clk** %4, align 8
  %48 = getelementptr inbounds %struct.clk, %struct.clk* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @__ffs(i32 %49)
  %51 = shl i32 %46, %50
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.clk*, %struct.clk** %4, align 8
  %56 = getelementptr inbounds %struct.clk, %struct.clk* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @__raw_writel(i32 %54, i32 %57)
  %59 = load %struct.clk*, %struct.clk** %4, align 8
  %60 = getelementptr inbounds %struct.clk, %struct.clk* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @__raw_readl(i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.clk*, %struct.clk** %4, align 8
  %64 = call i32 @_omap2xxx_clk_commit(%struct.clk* %63)
  %65 = load %struct.clk*, %struct.clk** %4, align 8
  %66 = load %struct.clk*, %struct.clk** %5, align 8
  %67 = call i32 @clk_reparent(%struct.clk* %65, %struct.clk* %66)
  %68 = load %struct.clk*, %struct.clk** %5, align 8
  %69 = getelementptr inbounds %struct.clk, %struct.clk* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.clk*, %struct.clk** %4, align 8
  %72 = getelementptr inbounds %struct.clk, %struct.clk* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %35
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.clk*, %struct.clk** %4, align 8
  %78 = getelementptr inbounds %struct.clk, %struct.clk* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = sdiv i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %35
  %82 = load %struct.clk*, %struct.clk** %4, align 8
  %83 = getelementptr inbounds %struct.clk, %struct.clk* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.clk*, %struct.clk** %4, align 8
  %86 = getelementptr inbounds %struct.clk, %struct.clk* %85, i32 0, i32 3
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.clk*, %struct.clk** %4, align 8
  %91 = getelementptr inbounds %struct.clk, %struct.clk* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %89, i32 %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %81, %32, %23, %15
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @_omap2_clksel_get_src_field(%struct.clk*, %struct.clk*, i32*) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @_omap2xxx_clk_commit(%struct.clk*) #1

declare dso_local i32 @clk_reparent(%struct.clk*, %struct.clk*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
