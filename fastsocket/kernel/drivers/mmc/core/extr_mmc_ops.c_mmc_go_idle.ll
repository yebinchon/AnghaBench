; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_mmc_ops.c_mmc_go_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_mmc_ops.c_mmc_go_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i64 }
%struct.mmc_command = type { i32, i64, i32 }

@MMC_CS_HIGH = common dso_local global i32 0, align 4
@MMC_GO_IDLE_STATE = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R1 = common dso_local global i32 0, align 4
@MMC_RSP_NONE = common dso_local global i32 0, align 4
@MMC_CMD_BC = common dso_local global i32 0, align 4
@MMC_CS_DONTCARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_go_idle(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_command, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %5 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %6 = call i32 @mmc_host_is_spi(%struct.mmc_host* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %10 = load i32, i32* @MMC_CS_HIGH, align 4
  %11 = call i32 @mmc_set_chip_select(%struct.mmc_host* %9, i32 %10)
  %12 = call i32 @mmc_delay(i32 1)
  br label %13

13:                                               ; preds = %8, %1
  %14 = call i32 @memset(%struct.mmc_command* %4, i32 0, i32 24)
  %15 = load i32, i32* @MMC_GO_IDLE_STATE, align 4
  %16 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %4, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %4, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @MMC_RSP_SPI_R1, align 4
  %19 = load i32, i32* @MMC_RSP_NONE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MMC_CMD_BC, align 4
  %22 = or i32 %20, %21
  %23 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %4, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %25 = call i32 @mmc_wait_for_cmd(%struct.mmc_host* %24, %struct.mmc_command* %4, i32 0)
  store i32 %25, i32* %3, align 4
  %26 = call i32 @mmc_delay(i32 1)
  %27 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %28 = call i32 @mmc_host_is_spi(%struct.mmc_host* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %13
  %31 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %32 = load i32, i32* @MMC_CS_DONTCARE, align 4
  %33 = call i32 @mmc_set_chip_select(%struct.mmc_host* %31, i32 %32)
  %34 = call i32 @mmc_delay(i32 1)
  br label %35

35:                                               ; preds = %30, %13
  %36 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %37 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @mmc_host_is_spi(%struct.mmc_host*) #1

declare dso_local i32 @mmc_set_chip_select(%struct.mmc_host*, i32) #1

declare dso_local i32 @mmc_delay(i32) #1

declare dso_local i32 @memset(%struct.mmc_command*, i32, i32) #1

declare dso_local i32 @mmc_wait_for_cmd(%struct.mmc_host*, %struct.mmc_command*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
