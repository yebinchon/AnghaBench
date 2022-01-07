; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_xilinx_spi.c_xilinx_spi_txrx_bufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_xilinx_spi.c_xilinx_spi_txrx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32, i32 }
%struct.xilinx_spi = type { i32, i64, i32, i32, i32 }

@XIPIF_V123B_IIER_OFFSET = common dso_local global i64 0, align 8
@XSPI_INTR_TX_EMPTY = common dso_local global i32 0, align 4
@XSPI_CR_OFFSET = common dso_local global i64 0, align 8
@XSPI_CR_TRANS_INHIBIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @xilinx_spi_txrx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_spi_txrx_bufs(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.xilinx_spi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.xilinx_spi* @spi_master_get_devdata(i32 %10)
  store %struct.xilinx_spi* %11, %struct.xilinx_spi** %5, align 8
  %12 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %16 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %21 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %26 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %28 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @INIT_COMPLETION(i32 %29)
  %31 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %32 = call i32 @xilinx_spi_fill_tx_fifo(%struct.xilinx_spi* %31)
  %33 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %34 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @XIPIF_V123B_IIER_OFFSET, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @in_be32(i64 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %40 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @XIPIF_V123B_IIER_OFFSET, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @XSPI_INTR_TX_EMPTY, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @out_be32(i64 %43, i32 %46)
  %48 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %49 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @XSPI_CR_OFFSET, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @in_be16(i64 %52)
  %54 = load i32, i32* @XSPI_CR_TRANS_INHIBIT, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  store i32 %56, i32* %7, align 4
  %57 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %58 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @XSPI_CR_OFFSET, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @out_be16(i64 %61, i32 %62)
  %64 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %65 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %64, i32 0, i32 2
  %66 = call i32 @wait_for_completion(i32* %65)
  %67 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %68 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @XIPIF_V123B_IIER_OFFSET, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @out_be32(i64 %71, i32 %72)
  %74 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %75 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %78 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %76, %79
  ret i32 %80
}

declare dso_local %struct.xilinx_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @INIT_COMPLETION(i32) #1

declare dso_local i32 @xilinx_spi_fill_tx_fifo(%struct.xilinx_spi*) #1

declare dso_local i32 @in_be32(i64) #1

declare dso_local i32 @out_be32(i64, i32) #1

declare dso_local i32 @in_be16(i64) #1

declare dso_local i32 @out_be16(i64, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
