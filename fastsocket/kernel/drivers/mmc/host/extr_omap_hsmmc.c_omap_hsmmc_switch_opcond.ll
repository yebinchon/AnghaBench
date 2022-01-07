; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_switch_opcond.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_switch_opcond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32)* }

@HCTL = common dso_local global i32 0, align 4
@SDVSCLR = common dso_local global i32 0, align 4
@MMC_VDD_23_24 = common dso_local global i32 0, align 4
@SDVS18 = common dso_local global i32 0, align 4
@SDVS30 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unable to switch operating voltage\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hsmmc_host*, i32)* @omap_hsmmc_switch_opcond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_switch_opcond(%struct.omap_hsmmc_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_hsmmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__, align 8
  %9 = alloca %struct.TYPE_2__, align 8
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %11 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @clk_disable(i32 %12)
  %14 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %15 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_disable(i32 %16)
  %18 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %19 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %24 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @clk_disable(i32 %25)
  br label %27

27:                                               ; preds = %22, %2
  %28 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %29 = call i32 (i32, i32, i32, i32)* @mmc_slot(%struct.omap_hsmmc_host* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 (i32, i32, i32, i32)* %29, i32 (i32, i32, i32, i32)** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %32 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %31, align 8
  %33 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %34 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %37 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = call i32 %32(i32 %35, i32 %38, i32 0, i32 0)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %27
  %43 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %44 = call i32 (i32, i32, i32, i32)* @mmc_slot(%struct.omap_hsmmc_host* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 (i32, i32, i32, i32)* %44, i32 (i32, i32, i32, i32)** %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %47 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %46, align 8
  %48 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %49 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %52 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 %47(i32 %50, i32 %53, i32 1, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %42, %27
  %57 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %58 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @clk_enable(i32 %59)
  %61 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %62 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @clk_enable(i32 %63)
  %65 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %66 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %56
  %70 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %71 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @clk_enable(i32 %72)
  br label %74

74:                                               ; preds = %69, %56
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %117

78:                                               ; preds = %74
  %79 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %80 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @HCTL, align 4
  %83 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %84 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @HCTL, align 4
  %87 = call i32 @OMAP_HSMMC_READ(i32 %85, i32 %86)
  %88 = load i32, i32* @SDVSCLR, align 4
  %89 = and i32 %87, %88
  %90 = call i32 @OMAP_HSMMC_WRITE(i32 %81, i32 %82, i32 %89)
  %91 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %92 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @HCTL, align 4
  %95 = call i32 @OMAP_HSMMC_READ(i32 %93, i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %5, align 4
  %97 = shl i32 1, %96
  %98 = load i32, i32* @MMC_VDD_23_24, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %78
  %101 = load i32, i32* @SDVS18, align 4
  %102 = load i32, i32* %6, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %6, align 4
  br label %108

104:                                              ; preds = %78
  %105 = load i32, i32* @SDVS30, align 4
  %106 = load i32, i32* %6, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %104, %100
  %109 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %110 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @HCTL, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @OMAP_HSMMC_WRITE(i32 %111, i32 %112, i32 %113)
  %115 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %116 = call i32 @set_sd_bus_power(%struct.omap_hsmmc_host* %115)
  store i32 0, i32* %3, align 4
  br label %124

117:                                              ; preds = %77
  %118 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %119 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @mmc_dev(i32 %120)
  %122 = call i32 @dev_dbg(i32 %121, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %117, %108
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 (i32, i32, i32, i32)* @mmc_slot(%struct.omap_hsmmc_host*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @OMAP_HSMMC_WRITE(i32, i32, i32) #1

declare dso_local i32 @OMAP_HSMMC_READ(i32, i32) #1

declare dso_local i32 @set_sd_bus_power(%struct.omap_hsmmc_host*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
