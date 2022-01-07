; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_omap_hwmod.c__init_main_clk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_omap_hwmod.c__init_main_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hwmod = type { %struct.clk*, i32, i32, i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"omap_hwmod: %s: cannot clk_get main_clk %s.%s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hwmod*)* @_init_main_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_init_main_clk(%struct.omap_hwmod* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_hwmod*, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i32, align 4
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %7 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

11:                                               ; preds = %1
  %12 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %13 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %16 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.clk* @clk_get_sys(i32 %14, i32 %17)
  store %struct.clk* %18, %struct.clk** %4, align 8
  %19 = load %struct.clk*, %struct.clk** %4, align 8
  %20 = call i64 @IS_ERR(%struct.clk* %19)
  %21 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %22 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %25 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %28 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @WARN(i64 %20, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %29)
  %31 = load %struct.clk*, %struct.clk** %4, align 8
  %32 = call i64 @IS_ERR(%struct.clk* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %11
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %11
  %38 = load %struct.clk*, %struct.clk** %4, align 8
  %39 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %40 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %39, i32 0, i32 0
  store %struct.clk* %38, %struct.clk** %40, align 8
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %37, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.clk* @clk_get_sys(i32, i32) #1

declare dso_local i32 @WARN(i64, i8*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
