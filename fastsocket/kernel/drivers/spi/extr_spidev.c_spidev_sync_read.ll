; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spidev.c_spidev_sync_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spidev.c_spidev_sync_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spidev_data = type { i32 }
%struct.spi_transfer = type { i64, i32 }
%struct.spi_message = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spidev_data*, i64)* @spidev_sync_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spidev_sync_read(%struct.spidev_data* %0, i64 %1) #0 {
  %3 = alloca %struct.spidev_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.spi_transfer, align 8
  %6 = alloca %struct.spi_message, align 4
  store %struct.spidev_data* %0, %struct.spidev_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %5, i32 0, i32 0
  %8 = load i64, i64* %4, align 8
  store i64 %8, i64* %7, align 8
  %9 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %5, i32 0, i32 1
  %10 = load %struct.spidev_data*, %struct.spidev_data** %3, align 8
  %11 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 8
  %13 = call i32 @spi_message_init(%struct.spi_message* %6)
  %14 = call i32 @spi_message_add_tail(%struct.spi_transfer* %5, %struct.spi_message* %6)
  %15 = load %struct.spidev_data*, %struct.spidev_data** %3, align 8
  %16 = call i32 @spidev_sync(%struct.spidev_data* %15, %struct.spi_message* %6)
  ret i32 %16
}

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spidev_sync(%struct.spidev_data*, %struct.spi_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
