; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_ppc4xx.c_spi_ppc4xx_txrx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_ppc4xx.c_spi_ppc4xx_txrx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.spi_transfer = type { i32, i32, i32* }
%struct.ppc4xx_spi = type { i32, i32, %struct.TYPE_2__*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"txrx: tx %p, rx %p, len %d\0A\00", align 1
@SPI_PPC4XX_CR_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @spi_ppc4xx_txrx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_ppc4xx_txrx(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.ppc4xx_spi*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 1
  %9 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %10 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dev_dbg(i32* %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %11, i32 %14, i32 %17)
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.ppc4xx_spi* @spi_master_get_devdata(i32 %21)
  store %struct.ppc4xx_spi* %22, %struct.ppc4xx_spi** %5, align 8
  %23 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %5, align 8
  %27 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %26, i32 0, i32 3
  store i32* %25, i32** %27, align 8
  %28 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %5, align 8
  %32 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %5, align 8
  %37 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %5, align 8
  %39 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %5, align 8
  %41 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %2
  %45 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %5, align 8
  %46 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  br label %51

50:                                               ; preds = %2
  br label %51

51:                                               ; preds = %50, %44
  %52 = phi i32 [ %49, %44 ], [ 0, %50 ]
  store i32 %52, i32* %6, align 4
  %53 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %5, align 8
  %54 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @out_8(i32* %56, i32 %57)
  %59 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %5, align 8
  %60 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* @SPI_PPC4XX_CR_STR, align 4
  %64 = call i32 @out_8(i32* %62, i32 %63)
  %65 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %5, align 8
  %66 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %65, i32 0, i32 1
  %67 = call i32 @wait_for_completion(i32* %66)
  %68 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %5, align 8
  %69 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  ret i32 %70
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32*, i32, i32) #1

declare dso_local %struct.ppc4xx_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @out_8(i32*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
