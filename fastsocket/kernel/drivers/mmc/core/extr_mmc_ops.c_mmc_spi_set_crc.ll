; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_mmc_ops.c_mmc_spi_set_crc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_mmc_ops.c_mmc_spi_set_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_command = type { i32, i32, i32 }

@MMC_SPI_CRC_ON_OFF = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_spi_set_crc(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_command, align 4
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @memset(%struct.mmc_command* %5, i32 0, i32 12)
  %8 = load i32, i32* @MMC_SPI_CRC_ON_OFF, align 4
  %9 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %5, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @MMC_RSP_SPI_R1, align 4
  %11 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %5, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %5, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %15 = call i32 @mmc_wait_for_cmd(%struct.mmc_host* %14, %struct.mmc_command* %5, i32 0)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %21 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32, i32* %6, align 4
  ret i32 %23
}

declare dso_local i32 @memset(%struct.mmc_command*, i32, i32) #1

declare dso_local i32 @mmc_wait_for_cmd(%struct.mmc_host*, %struct.mmc_command*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
