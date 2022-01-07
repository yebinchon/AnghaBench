; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_omap_hwmod.c__enable_clocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_omap_hwmod.c__enable_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hwmod = type { i32, %struct.omap_hwmod_ocp_if**, %struct.clk*, i32 }
%struct.omap_hwmod_ocp_if = type { i32, %struct.clk* }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"omap_hwmod: %s: enabling clocks\0A\00", align 1
@OCPIF_SWSUP_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hwmod*)* @_enable_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_enable_clocks(%struct.omap_hwmod* %0) #0 {
  %2 = alloca %struct.omap_hwmod*, align 8
  %3 = alloca %struct.omap_hwmod_ocp_if*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk*, align 8
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %2, align 8
  %6 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %7 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %11 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %10, i32 0, i32 2
  %12 = load %struct.clk*, %struct.clk** %11, align 8
  %13 = icmp ne %struct.clk* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %16 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %15, i32 0, i32 2
  %17 = load %struct.clk*, %struct.clk** %16, align 8
  %18 = call i32 @IS_ERR(%struct.clk* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %22 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %21, i32 0, i32 2
  %23 = load %struct.clk*, %struct.clk** %22, align 8
  %24 = call i32 @clk_enable(%struct.clk* %23)
  br label %25

25:                                               ; preds = %20, %14, %1
  %26 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %27 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %68

30:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  %31 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %32 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %31, i32 0, i32 1
  %33 = load %struct.omap_hwmod_ocp_if**, %struct.omap_hwmod_ocp_if*** %32, align 8
  %34 = load %struct.omap_hwmod_ocp_if*, %struct.omap_hwmod_ocp_if** %33, align 8
  store %struct.omap_hwmod_ocp_if* %34, %struct.omap_hwmod_ocp_if** %3, align 8
  br label %35

35:                                               ; preds = %62, %30
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %38 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %35
  %42 = load %struct.omap_hwmod_ocp_if*, %struct.omap_hwmod_ocp_if** %3, align 8
  %43 = getelementptr inbounds %struct.omap_hwmod_ocp_if, %struct.omap_hwmod_ocp_if* %42, i32 0, i32 1
  %44 = load %struct.clk*, %struct.clk** %43, align 8
  store %struct.clk* %44, %struct.clk** %5, align 8
  %45 = load %struct.clk*, %struct.clk** %5, align 8
  %46 = icmp ne %struct.clk* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = load %struct.clk*, %struct.clk** %5, align 8
  %49 = call i32 @IS_ERR(%struct.clk* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %47
  %52 = load %struct.omap_hwmod_ocp_if*, %struct.omap_hwmod_ocp_if** %3, align 8
  %53 = getelementptr inbounds %struct.omap_hwmod_ocp_if, %struct.omap_hwmod_ocp_if* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @OCPIF_SWSUP_IDLE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.clk*, %struct.clk** %5, align 8
  %60 = call i32 @clk_enable(%struct.clk* %59)
  br label %61

61:                                               ; preds = %58, %51, %47, %41
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  %65 = load %struct.omap_hwmod_ocp_if*, %struct.omap_hwmod_ocp_if** %3, align 8
  %66 = getelementptr inbounds %struct.omap_hwmod_ocp_if, %struct.omap_hwmod_ocp_if* %65, i32 1
  store %struct.omap_hwmod_ocp_if* %66, %struct.omap_hwmod_ocp_if** %3, align 8
  br label %35

67:                                               ; preds = %35
  br label %68

68:                                               ; preds = %67, %25
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @clk_enable(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
