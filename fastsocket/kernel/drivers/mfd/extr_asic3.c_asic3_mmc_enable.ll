; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_asic3.c_asic3_mmc_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_asic3.c_asic3_mmc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.asic3 = type { i32* }

@SDHWCTRL = common dso_local global i32 0, align 4
@SDCONF = common dso_local global i32 0, align 4
@ASIC3_SDHWCTRL_LEVCD = common dso_local global i32 0, align 4
@ASIC3_SDHWCTRL_LEVWP = common dso_local global i32 0, align 4
@ASIC3_SDHWCTRL_SUSPEND = common dso_local global i32 0, align 4
@ASIC3_SDHWCTRL_PCLR = common dso_local global i32 0, align 4
@ASIC3_CLOCK_EX0 = common dso_local global i64 0, align 8
@ASIC3_CLOCK_EX1 = common dso_local global i64 0, align 8
@CLOCK = common dso_local global i32 0, align 4
@SEL = common dso_local global i32 0, align 4
@CLOCK_SEL_CX = common dso_local global i32 0, align 4
@CLOCK_SEL_SD_HCLK_SEL = common dso_local global i32 0, align 4
@ASIC3_CLOCK_SD_HOST = common dso_local global i64 0, align 8
@ASIC3_CLOCK_SD_BUS = common dso_local global i64 0, align 8
@EXTCF = common dso_local global i32 0, align 4
@SELECT = common dso_local global i32 0, align 4
@ASIC3_EXTCF_SD_MEM_ENABLE = common dso_local global i32 0, align 4
@ASIC3_SDHWCTRL_SDPWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @asic3_mmc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asic3_mmc_enable(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.asic3*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.asic3* @dev_get_drvdata(i32 %7)
  store %struct.asic3* %8, %struct.asic3** %3, align 8
  %9 = load %struct.asic3*, %struct.asic3** %3, align 8
  %10 = load i32, i32* @SDHWCTRL, align 4
  %11 = load i32, i32* @SDCONF, align 4
  %12 = call i32 @ASIC3_OFFSET(i32 %10, i32 %11)
  %13 = load i32, i32* @ASIC3_SDHWCTRL_LEVCD, align 4
  %14 = call i32 @asic3_set_register(%struct.asic3* %9, i32 %12, i32 %13, i32 1)
  %15 = load %struct.asic3*, %struct.asic3** %3, align 8
  %16 = load i32, i32* @SDHWCTRL, align 4
  %17 = load i32, i32* @SDCONF, align 4
  %18 = call i32 @ASIC3_OFFSET(i32 %16, i32 %17)
  %19 = load i32, i32* @ASIC3_SDHWCTRL_LEVWP, align 4
  %20 = call i32 @asic3_set_register(%struct.asic3* %15, i32 %18, i32 %19, i32 1)
  %21 = load %struct.asic3*, %struct.asic3** %3, align 8
  %22 = load i32, i32* @SDHWCTRL, align 4
  %23 = load i32, i32* @SDCONF, align 4
  %24 = call i32 @ASIC3_OFFSET(i32 %22, i32 %23)
  %25 = load i32, i32* @ASIC3_SDHWCTRL_SUSPEND, align 4
  %26 = call i32 @asic3_set_register(%struct.asic3* %21, i32 %24, i32 %25, i32 0)
  %27 = load %struct.asic3*, %struct.asic3** %3, align 8
  %28 = load i32, i32* @SDHWCTRL, align 4
  %29 = load i32, i32* @SDCONF, align 4
  %30 = call i32 @ASIC3_OFFSET(i32 %28, i32 %29)
  %31 = load i32, i32* @ASIC3_SDHWCTRL_PCLR, align 4
  %32 = call i32 @asic3_set_register(%struct.asic3* %27, i32 %30, i32 %31, i32 0)
  %33 = load %struct.asic3*, %struct.asic3** %3, align 8
  %34 = load %struct.asic3*, %struct.asic3** %3, align 8
  %35 = getelementptr inbounds %struct.asic3, %struct.asic3* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @ASIC3_CLOCK_EX0, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = call i32 @asic3_clk_enable(%struct.asic3* %33, i32* %38)
  %40 = load %struct.asic3*, %struct.asic3** %3, align 8
  %41 = load %struct.asic3*, %struct.asic3** %3, align 8
  %42 = getelementptr inbounds %struct.asic3, %struct.asic3* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @ASIC3_CLOCK_EX1, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = call i32 @asic3_clk_enable(%struct.asic3* %40, i32* %45)
  %47 = call i32 @msleep(i32 1)
  %48 = load %struct.asic3*, %struct.asic3** %3, align 8
  %49 = load i32, i32* @CLOCK, align 4
  %50 = load i32, i32* @SEL, align 4
  %51 = call i32 @ASIC3_OFFSET(i32 %49, i32 %50)
  %52 = load i32, i32* @CLOCK_SEL_CX, align 4
  %53 = load i32, i32* @CLOCK_SEL_SD_HCLK_SEL, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @asic3_write_register(%struct.asic3* %48, i32 %51, i32 %54)
  %56 = load %struct.asic3*, %struct.asic3** %3, align 8
  %57 = load %struct.asic3*, %struct.asic3** %3, align 8
  %58 = getelementptr inbounds %struct.asic3, %struct.asic3* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @ASIC3_CLOCK_SD_HOST, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = call i32 @asic3_clk_enable(%struct.asic3* %56, i32* %61)
  %63 = load %struct.asic3*, %struct.asic3** %3, align 8
  %64 = load %struct.asic3*, %struct.asic3** %3, align 8
  %65 = getelementptr inbounds %struct.asic3, %struct.asic3* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @ASIC3_CLOCK_SD_BUS, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = call i32 @asic3_clk_enable(%struct.asic3* %63, i32* %68)
  %70 = call i32 @msleep(i32 1)
  %71 = load %struct.asic3*, %struct.asic3** %3, align 8
  %72 = load i32, i32* @EXTCF, align 4
  %73 = load i32, i32* @SELECT, align 4
  %74 = call i32 @ASIC3_OFFSET(i32 %72, i32 %73)
  %75 = load i32, i32* @ASIC3_EXTCF_SD_MEM_ENABLE, align 4
  %76 = call i32 @asic3_set_register(%struct.asic3* %71, i32 %74, i32 %75, i32 1)
  %77 = load %struct.asic3*, %struct.asic3** %3, align 8
  %78 = load i32, i32* @SDHWCTRL, align 4
  %79 = load i32, i32* @SDCONF, align 4
  %80 = call i32 @ASIC3_OFFSET(i32 %78, i32 %79)
  %81 = load i32, i32* @ASIC3_SDHWCTRL_SDPWR, align 4
  %82 = call i32 @asic3_set_register(%struct.asic3* %77, i32 %80, i32 %81, i32 1)
  ret i32 0
}

declare dso_local %struct.asic3* @dev_get_drvdata(i32) #1

declare dso_local i32 @asic3_set_register(%struct.asic3*, i32, i32, i32) #1

declare dso_local i32 @ASIC3_OFFSET(i32, i32) #1

declare dso_local i32 @asic3_clk_enable(%struct.asic3*, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @asic3_write_register(%struct.asic3*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
