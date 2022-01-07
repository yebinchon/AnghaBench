; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_mmc_ops.c_mmc_send_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_mmc_ops.c_mmc_send_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, i32 }
%struct.mmc_command = type { i32, i32, i32*, i32 }

@MMC_SEND_STATUS = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R2 = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_AC = common dso_local global i32 0, align 4
@MMC_CMD_RETRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_send_status(%struct.mmc_card* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_command, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %9 = icmp ne %struct.mmc_card* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %14 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = call i32 @memset(%struct.mmc_command* %7, i32 0, i32 24)
  %21 = load i32, i32* @MMC_SEND_STATUS, align 4
  %22 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 3
  store i32 %21, i32* %22, align 8
  %23 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %24 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mmc_host_is_spi(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %2
  %29 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 16
  %33 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  br label %34

34:                                               ; preds = %28, %2
  %35 = load i32, i32* @MMC_RSP_SPI_R2, align 4
  %36 = load i32, i32* @MMC_RSP_R1, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @MMC_CMD_AC, align 4
  %39 = or i32 %37, %38
  %40 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %42 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MMC_CMD_RETRIES, align 4
  %45 = call i32 @mmc_wait_for_cmd(i32 %43, %struct.mmc_command* %7, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %60

50:                                               ; preds = %34
  %51 = load i32*, i32** %5, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %53, %50
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %48
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.mmc_command*, i32, i32) #1

declare dso_local i32 @mmc_host_is_spi(i32) #1

declare dso_local i32 @mmc_wait_for_cmd(i32, %struct.mmc_command*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
