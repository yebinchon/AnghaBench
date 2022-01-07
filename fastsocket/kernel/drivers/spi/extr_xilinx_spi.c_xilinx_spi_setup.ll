; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_xilinx_spi.c_xilinx_spi_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_xilinx_spi.c_xilinx_spi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_bitbang = type { i32 }
%struct.xilinx_spi = type { %struct.spi_bitbang }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @xilinx_spi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_spi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_bitbang*, align 8
  %5 = alloca %struct.xilinx_spi*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.xilinx_spi* @spi_master_get_devdata(i32 %9)
  store %struct.xilinx_spi* %10, %struct.xilinx_spi** %5, align 8
  %11 = load %struct.xilinx_spi*, %struct.xilinx_spi** %5, align 8
  %12 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %11, i32 0, i32 0
  store %struct.spi_bitbang* %12, %struct.spi_bitbang** %4, align 8
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = call i32 @xilinx_spi_setup_transfer(%struct.spi_device* %13, i32* null)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %17
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.xilinx_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @xilinx_spi_setup_transfer(%struct.spi_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
