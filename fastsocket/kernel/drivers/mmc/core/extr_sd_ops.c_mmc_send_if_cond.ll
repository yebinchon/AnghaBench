; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sd_ops.c_mmc_send_if_cond.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sd_ops.c_mmc_send_if_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_command = type { i32, i32, i32*, i32 }

@mmc_send_if_cond.test_pattern = internal constant i32 170, align 4
@SD_SEND_IF_COND = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R7 = common dso_local global i32 0, align 4
@MMC_RSP_R7 = common dso_local global i32 0, align 4
@MMC_CMD_BCR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_send_if_cond(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_command, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @SD_SEND_IF_COND, align 4
  %10 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 3
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 16744448
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = shl i32 %14, 8
  %16 = or i32 %15, 170
  %17 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @MMC_RSP_SPI_R7, align 4
  %19 = load i32, i32* @MMC_RSP_R7, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MMC_CMD_BCR, align 4
  %22 = or i32 %20, %21
  %23 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %25 = call i32 @mmc_wait_for_cmd(%struct.mmc_host* %24, %struct.mmc_command* %6, i32 0)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %53

30:                                               ; preds = %2
  %31 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %32 = call i64 @mmc_host_is_spi(%struct.mmc_host* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 255
  store i32 %39, i32* %8, align 4
  br label %46

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 255
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %40, %34
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 170
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %49, %28
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @mmc_wait_for_cmd(%struct.mmc_host*, %struct.mmc_command*, i32) #1

declare dso_local i64 @mmc_host_is_spi(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
