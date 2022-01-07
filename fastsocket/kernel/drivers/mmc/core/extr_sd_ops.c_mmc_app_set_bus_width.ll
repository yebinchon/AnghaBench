; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sd_ops.c_mmc_app_set_bus_width.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sd_ops.c_mmc_app_set_bus_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }
%struct.mmc_command = type { i32, i32, i32 }

@SD_APP_SET_BUS_WIDTH = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_AC = common dso_local global i32 0, align 4
@SD_BUS_WIDTH_1 = common dso_local global i32 0, align 4
@SD_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MMC_CMD_RETRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_app_set_bus_width(%struct.mmc_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_command, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %9 = icmp ne %struct.mmc_card* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %14 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = call i32 @memset(%struct.mmc_command* %7, i32 0, i32 12)
  %21 = load i32, i32* @SD_APP_SET_BUS_WIDTH, align 4
  %22 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @MMC_RSP_R1, align 4
  %24 = load i32, i32* @MMC_CMD_AC, align 4
  %25 = or i32 %23, %24
  %26 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %34 [
    i32 129, label %28
    i32 128, label %31
  ]

28:                                               ; preds = %2
  %29 = load i32, i32* @SD_BUS_WIDTH_1, align 4
  %30 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  br label %37

31:                                               ; preds = %2
  %32 = load i32, i32* @SD_BUS_WIDTH_4, align 4
  %33 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  br label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %49

37:                                               ; preds = %31, %28
  %38 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %39 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %42 = load i32, i32* @MMC_CMD_RETRIES, align 4
  %43 = call i32 @mmc_wait_for_app_cmd(i32 %40, %struct.mmc_card* %41, %struct.mmc_command* %7, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %46, %34
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.mmc_command*, i32, i32) #1

declare dso_local i32 @mmc_wait_for_app_cmd(i32, %struct.mmc_card*, %struct.mmc_command*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
