; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_xilinx_spi.c_xilinx_spi_chipselect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_xilinx_spi.c_xilinx_spi_chipselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.xilinx_spi = type { i64 }

@BITBANG_CS_INACTIVE = common dso_local global i32 0, align 4
@XSPI_SSR_OFFSET = common dso_local global i64 0, align 8
@BITBANG_CS_ACTIVE = common dso_local global i32 0, align 4
@XSPI_CR_OFFSET = common dso_local global i64 0, align 8
@XSPI_CR_MODE_MASK = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@XSPI_CR_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@XSPI_CR_CPOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @xilinx_spi_chipselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xilinx_spi_chipselect(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xilinx_spi*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.xilinx_spi* @spi_master_get_devdata(i32 %9)
  store %struct.xilinx_spi* %10, %struct.xilinx_spi** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @BITBANG_CS_INACTIVE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %16 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @XSPI_SSR_OFFSET, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @out_be32(i64 %19, i32 65535)
  br label %76

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @BITBANG_CS_ACTIVE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %75

25:                                               ; preds = %21
  %26 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %27 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @XSPI_CR_OFFSET, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @in_be16(i64 %30)
  %32 = load i32, i32* @XSPI_CR_MODE_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  store i32 %34, i32* %6, align 4
  %35 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %36 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SPI_CPHA, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %25
  %42 = load i32, i32* @XSPI_CR_CPHA, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %25
  %46 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %47 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SPI_CPOL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* @XSPI_CR_CPOL, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %52, %45
  %57 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %58 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @XSPI_CR_OFFSET, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @out_be16(i64 %61, i32 %62)
  %64 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %65 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @XSPI_SSR_OFFSET, align 8
  %68 = add nsw i64 %66, %67
  %69 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %70 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 1, %71
  %73 = xor i32 %72, -1
  %74 = call i32 @out_be32(i64 %68, i32 %73)
  br label %75

75:                                               ; preds = %56, %21
  br label %76

76:                                               ; preds = %75, %14
  ret void
}

declare dso_local %struct.xilinx_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @out_be32(i64, i32) #1

declare dso_local i32 @in_be16(i64) #1

declare dso_local i32 @out_be16(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
