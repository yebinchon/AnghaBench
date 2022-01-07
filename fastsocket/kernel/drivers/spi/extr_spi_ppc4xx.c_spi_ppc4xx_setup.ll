; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_ppc4xx.c_spi_ppc4xx_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_ppc4xx.c_spi_ppc4xx_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, %struct.spi_ppc4xx_cs*, i32, i32 }
%struct.spi_ppc4xx_cs = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"invalid bits-per-word (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"invalid max_speed_hz (must be non-zero)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SPI_PPC4XX_MODE_SPE = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CLK_MODE0 = common dso_local global i32 0, align 4
@SPI_CLK_MODE1 = common dso_local global i32 0, align 4
@SPI_CLK_MODE2 = common dso_local global i32 0, align 4
@SPI_CLK_MODE3 = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SPI_PPC4XX_MODE_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @spi_ppc4xx_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_ppc4xx_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_ppc4xx_cs*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %6 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %5, i32 0, i32 2
  %7 = load %struct.spi_ppc4xx_cs*, %struct.spi_ppc4xx_cs** %6, align 8
  store %struct.spi_ppc4xx_cs* %7, %struct.spi_ppc4xx_cs** %4, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 8
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 3
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i32*, i8*, ...) @dev_err(i32* %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %96

21:                                               ; preds = %1
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 3
  %29 = call i32 (i32*, i8*, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %96

32:                                               ; preds = %21
  %33 = load %struct.spi_ppc4xx_cs*, %struct.spi_ppc4xx_cs** %4, align 8
  %34 = icmp eq %struct.spi_ppc4xx_cs* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.spi_ppc4xx_cs* @kzalloc(i32 4, i32 %36)
  store %struct.spi_ppc4xx_cs* %37, %struct.spi_ppc4xx_cs** %4, align 8
  %38 = load %struct.spi_ppc4xx_cs*, %struct.spi_ppc4xx_cs** %4, align 8
  %39 = icmp ne %struct.spi_ppc4xx_cs* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %96

43:                                               ; preds = %35
  %44 = load %struct.spi_ppc4xx_cs*, %struct.spi_ppc4xx_cs** %4, align 8
  %45 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 2
  store %struct.spi_ppc4xx_cs* %44, %struct.spi_ppc4xx_cs** %46, align 8
  br label %47

47:                                               ; preds = %43, %32
  %48 = load i32, i32* @SPI_PPC4XX_MODE_SPE, align 4
  %49 = load %struct.spi_ppc4xx_cs*, %struct.spi_ppc4xx_cs** %4, align 8
  %50 = getelementptr inbounds %struct.spi_ppc4xx_cs, %struct.spi_ppc4xx_cs* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %52 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SPI_CPHA, align 4
  %55 = load i32, i32* @SPI_CPOL, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  switch i32 %57, label %82 [
    i32 131, label %58
    i32 130, label %64
    i32 129, label %70
    i32 128, label %76
  ]

58:                                               ; preds = %47
  %59 = load i32, i32* @SPI_CLK_MODE0, align 4
  %60 = load %struct.spi_ppc4xx_cs*, %struct.spi_ppc4xx_cs** %4, align 8
  %61 = getelementptr inbounds %struct.spi_ppc4xx_cs, %struct.spi_ppc4xx_cs* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %82

64:                                               ; preds = %47
  %65 = load i32, i32* @SPI_CLK_MODE1, align 4
  %66 = load %struct.spi_ppc4xx_cs*, %struct.spi_ppc4xx_cs** %4, align 8
  %67 = getelementptr inbounds %struct.spi_ppc4xx_cs, %struct.spi_ppc4xx_cs* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %82

70:                                               ; preds = %47
  %71 = load i32, i32* @SPI_CLK_MODE2, align 4
  %72 = load %struct.spi_ppc4xx_cs*, %struct.spi_ppc4xx_cs** %4, align 8
  %73 = getelementptr inbounds %struct.spi_ppc4xx_cs, %struct.spi_ppc4xx_cs* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %82

76:                                               ; preds = %47
  %77 = load i32, i32* @SPI_CLK_MODE3, align 4
  %78 = load %struct.spi_ppc4xx_cs*, %struct.spi_ppc4xx_cs** %4, align 8
  %79 = getelementptr inbounds %struct.spi_ppc4xx_cs, %struct.spi_ppc4xx_cs* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %47, %76, %70, %64, %58
  %83 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %84 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SPI_LSB_FIRST, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load i32, i32* @SPI_PPC4XX_MODE_RD, align 4
  %91 = load %struct.spi_ppc4xx_cs*, %struct.spi_ppc4xx_cs** %4, align 8
  %92 = getelementptr inbounds %struct.spi_ppc4xx_cs, %struct.spi_ppc4xx_cs* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %89, %82
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %40, %26, %12
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.spi_ppc4xx_cs* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
