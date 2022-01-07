; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_mmc_ops.c_mmc_card_sleepawake.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_mmc_ops.c_mmc_card_sleepawake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, %struct.mmc_card* }
%struct.mmc_card = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_command = type { i32, i32, i32 }

@MMC_SLEEP_AWAKE = common dso_local global i32 0, align 4
@MMC_RSP_R1B = common dso_local global i32 0, align 4
@MMC_CMD_AC = common dso_local global i32 0, align 4
@MMC_CAP_WAIT_WHILE_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_card_sleepawake(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_command, align 4
  %7 = alloca %struct.mmc_card*, align 8
  %8 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %9, i32 0, i32 1
  %11 = load %struct.mmc_card*, %struct.mmc_card** %10, align 8
  store %struct.mmc_card* %11, %struct.mmc_card** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %16 = call i32 @mmc_deselect_cards(%struct.mmc_host* %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = call i32 @memset(%struct.mmc_command* %6, i32 0, i32 12)
  %19 = load i32, i32* @MMC_SLEEP_AWAKE, align 4
  %20 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %22 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 16
  %25 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, 32768
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %28, %17
  %33 = load i32, i32* @MMC_RSP_R1B, align 4
  %34 = load i32, i32* @MMC_CMD_AC, align 4
  %35 = or i32 %33, %34
  %36 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %38 = call i32 @mmc_wait_for_cmd(%struct.mmc_host* %37, %struct.mmc_command* %6, i32 0)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %65

43:                                               ; preds = %32
  %44 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %45 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MMC_CAP_WAIT_WHILE_BUSY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %52 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @DIV_ROUND_UP(i32 %54, i32 10000)
  %56 = call i32 @mmc_delay(i32 %55)
  br label %57

57:                                               ; preds = %50, %43
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %62 = call i32 @mmc_select_card(%struct.mmc_card* %61)
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %41
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @mmc_deselect_cards(%struct.mmc_host*) #1

declare dso_local i32 @memset(%struct.mmc_command*, i32, i32) #1

declare dso_local i32 @mmc_wait_for_cmd(%struct.mmc_host*, %struct.mmc_command*, i32) #1

declare dso_local i32 @mmc_delay(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @mmc_select_card(%struct.mmc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
