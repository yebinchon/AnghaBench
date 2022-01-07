; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_imx.c_mx31_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_imx.c_mx31_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_imx_data = type { i64, i32 }
%struct.spi_imx_config = type { i32, i32, i32, i32 }

@MX31_CSPICTRL_ENABLE = common dso_local global i32 0, align 4
@MX31_CSPICTRL_MASTER = common dso_local global i32 0, align 4
@MX31_CSPICTRL_DR_SHIFT = common dso_local global i32 0, align 4
@MX31_CSPICTRL_BC_SHIFT = common dso_local global i32 0, align 4
@MX35_CSPICTRL_BL_SHIFT = common dso_local global i32 0, align 4
@MX31_CSPICTRL_SSCTL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@MX31_CSPICTRL_PHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@MX31_CSPICTRL_POL = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@MX31_CSPICTRL_SSPOL = common dso_local global i32 0, align 4
@MX31_CSPICTRL_CS_SHIFT = common dso_local global i32 0, align 4
@MX35_CSPICTRL_CS_SHIFT = common dso_local global i32 0, align 4
@MXC_CSPICTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_imx_data*, %struct.spi_imx_config*)* @mx31_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx31_config(%struct.spi_imx_data* %0, %struct.spi_imx_config* %1) #0 {
  %3 = alloca %struct.spi_imx_data*, align 8
  %4 = alloca %struct.spi_imx_config*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_imx_data* %0, %struct.spi_imx_data** %3, align 8
  store %struct.spi_imx_config* %1, %struct.spi_imx_config** %4, align 8
  %6 = load i32, i32* @MX31_CSPICTRL_ENABLE, align 4
  %7 = load i32, i32* @MX31_CSPICTRL_MASTER, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.spi_imx_data*, %struct.spi_imx_data** %3, align 8
  %10 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.spi_imx_config*, %struct.spi_imx_config** %4, align 8
  %13 = getelementptr inbounds %struct.spi_imx_config, %struct.spi_imx_config* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @spi_imx_clkdiv_2(i32 %11, i32 %14)
  %16 = load i32, i32* @MX31_CSPICTRL_DR_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = call i64 (...) @cpu_is_mx31()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.spi_imx_config*, %struct.spi_imx_config** %4, align 8
  %24 = getelementptr inbounds %struct.spi_imx_config, %struct.spi_imx_config* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* @MX31_CSPICTRL_BC_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %47

31:                                               ; preds = %2
  %32 = call i64 (...) @cpu_is_mx35()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load %struct.spi_imx_config*, %struct.spi_imx_config** %4, align 8
  %36 = getelementptr inbounds %struct.spi_imx_config, %struct.spi_imx_config* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* @MX35_CSPICTRL_BL_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @MX31_CSPICTRL_SSCTL, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %34, %31
  br label %47

47:                                               ; preds = %46, %22
  %48 = load %struct.spi_imx_config*, %struct.spi_imx_config** %4, align 8
  %49 = getelementptr inbounds %struct.spi_imx_config, %struct.spi_imx_config* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SPI_CPHA, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* @MX31_CSPICTRL_PHA, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %47
  %59 = load %struct.spi_imx_config*, %struct.spi_imx_config** %4, align 8
  %60 = getelementptr inbounds %struct.spi_imx_config, %struct.spi_imx_config* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SPI_CPOL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @MX31_CSPICTRL_POL, align 4
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %58
  %70 = load %struct.spi_imx_config*, %struct.spi_imx_config** %4, align 8
  %71 = getelementptr inbounds %struct.spi_imx_config, %struct.spi_imx_config* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @SPI_CS_HIGH, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i32, i32* @MX31_CSPICTRL_SSPOL, align 4
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %76, %69
  %81 = load %struct.spi_imx_config*, %struct.spi_imx_config** %4, align 8
  %82 = getelementptr inbounds %struct.spi_imx_config, %struct.spi_imx_config* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %111

85:                                               ; preds = %80
  %86 = call i64 (...) @cpu_is_mx31()
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load %struct.spi_imx_config*, %struct.spi_imx_config** %4, align 8
  %90 = getelementptr inbounds %struct.spi_imx_config, %struct.spi_imx_config* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 32
  %93 = load i32, i32* @MX31_CSPICTRL_CS_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = load i32, i32* %5, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %5, align 4
  br label %110

97:                                               ; preds = %85
  %98 = call i64 (...) @cpu_is_mx35()
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load %struct.spi_imx_config*, %struct.spi_imx_config** %4, align 8
  %102 = getelementptr inbounds %struct.spi_imx_config, %struct.spi_imx_config* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 32
  %105 = load i32, i32* @MX35_CSPICTRL_CS_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = load i32, i32* %5, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %100, %97
  br label %110

110:                                              ; preds = %109, %88
  br label %111

111:                                              ; preds = %110, %80
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.spi_imx_data*, %struct.spi_imx_data** %3, align 8
  %114 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @MXC_CSPICTRL, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel(i32 %112, i64 %117)
  ret i32 0
}

declare dso_local i32 @spi_imx_clkdiv_2(i32, i32) #1

declare dso_local i64 @cpu_is_mx31(...) #1

declare dso_local i64 @cpu_is_mx35(...) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
