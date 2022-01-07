; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_au1550_spi.c_au1550_spi_txrx_bufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_au1550_spi.c_au1550_spi_txrx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32 }
%struct.au1550_spi = type { i32 (%struct.spi_device*, %struct.spi_transfer*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @au1550_spi_txrx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1550_spi_txrx_bufs(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.au1550_spi*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.au1550_spi* @spi_master_get_devdata(i32 %8)
  store %struct.au1550_spi* %9, %struct.au1550_spi** %5, align 8
  %10 = load %struct.au1550_spi*, %struct.au1550_spi** %5, align 8
  %11 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %10, i32 0, i32 0
  %12 = load i32 (%struct.spi_device*, %struct.spi_transfer*)*, i32 (%struct.spi_device*, %struct.spi_transfer*)** %11, align 8
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %15 = call i32 %12(%struct.spi_device* %13, %struct.spi_transfer* %14)
  ret i32 %15
}

declare dso_local %struct.au1550_spi* @spi_master_get_devdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
