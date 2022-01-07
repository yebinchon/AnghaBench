; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_omap_hwmod.c__init_interface_clks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_omap_hwmod.c__init_interface_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hwmod = type { i32, i32, %struct.omap_hwmod_ocp_if** }
%struct.omap_hwmod_ocp_if = type { %struct.clk*, i32, i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"omap_hwmod: %s: cannot clk_get interface_clk %s.%s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hwmod*)* @_init_interface_clks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_init_interface_clks(%struct.omap_hwmod* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_hwmod*, align 8
  %4 = alloca %struct.omap_hwmod_ocp_if*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %9 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

13:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %14 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %15 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %14, i32 0, i32 2
  %16 = load %struct.omap_hwmod_ocp_if**, %struct.omap_hwmod_ocp_if*** %15, align 8
  %17 = load %struct.omap_hwmod_ocp_if*, %struct.omap_hwmod_ocp_if** %16, align 8
  store %struct.omap_hwmod_ocp_if* %17, %struct.omap_hwmod_ocp_if** %4, align 8
  br label %18

18:                                               ; preds = %60, %13
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %21 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %65

24:                                               ; preds = %18
  %25 = load %struct.omap_hwmod_ocp_if*, %struct.omap_hwmod_ocp_if** %4, align 8
  %26 = getelementptr inbounds %struct.omap_hwmod_ocp_if, %struct.omap_hwmod_ocp_if* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %60

30:                                               ; preds = %24
  %31 = load %struct.omap_hwmod_ocp_if*, %struct.omap_hwmod_ocp_if** %4, align 8
  %32 = getelementptr inbounds %struct.omap_hwmod_ocp_if, %struct.omap_hwmod_ocp_if* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.omap_hwmod_ocp_if*, %struct.omap_hwmod_ocp_if** %4, align 8
  %35 = getelementptr inbounds %struct.omap_hwmod_ocp_if, %struct.omap_hwmod_ocp_if* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.clk* @clk_get_sys(i32 %33, i32 %36)
  store %struct.clk* %37, %struct.clk** %5, align 8
  %38 = load %struct.clk*, %struct.clk** %5, align 8
  %39 = call i64 @IS_ERR(%struct.clk* %38)
  %40 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %41 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.omap_hwmod_ocp_if*, %struct.omap_hwmod_ocp_if** %4, align 8
  %44 = getelementptr inbounds %struct.omap_hwmod_ocp_if, %struct.omap_hwmod_ocp_if* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.omap_hwmod_ocp_if*, %struct.omap_hwmod_ocp_if** %4, align 8
  %47 = getelementptr inbounds %struct.omap_hwmod_ocp_if, %struct.omap_hwmod_ocp_if* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @WARN(i64 %39, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i32 %48)
  %50 = load %struct.clk*, %struct.clk** %5, align 8
  %51 = call i64 @IS_ERR(%struct.clk* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %30
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %30
  %57 = load %struct.clk*, %struct.clk** %5, align 8
  %58 = load %struct.omap_hwmod_ocp_if*, %struct.omap_hwmod_ocp_if** %4, align 8
  %59 = getelementptr inbounds %struct.omap_hwmod_ocp_if, %struct.omap_hwmod_ocp_if* %58, i32 0, i32 0
  store %struct.clk* %57, %struct.clk** %59, align 8
  br label %60

60:                                               ; preds = %56, %29
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  %63 = load %struct.omap_hwmod_ocp_if*, %struct.omap_hwmod_ocp_if** %4, align 8
  %64 = getelementptr inbounds %struct.omap_hwmod_ocp_if, %struct.omap_hwmod_ocp_if* %63, i32 1
  store %struct.omap_hwmod_ocp_if* %64, %struct.omap_hwmod_ocp_if** %4, align 8
  br label %18

65:                                               ; preds = %18
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %12
  %68 = load i32, i32* %2, align 4
  ret i32 %68
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
