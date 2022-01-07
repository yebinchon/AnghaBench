; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_mmc_ops.c_mmc_set_relative_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_mmc_ops.c_mmc_set_relative_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, i32 }
%struct.mmc_command = type { i32, i32, i32 }

@MMC_SET_RELATIVE_ADDR = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_AC = common dso_local global i32 0, align 4
@MMC_CMD_RETRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_set_relative_addr(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_command, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %6 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %7 = icmp ne %struct.mmc_card* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %12 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = call i32 @memset(%struct.mmc_command* %5, i32 0, i32 12)
  %19 = load i32, i32* @MMC_SET_RELATIVE_ADDR, align 4
  %20 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %5, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %22 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 16
  %25 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %5, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @MMC_RSP_R1, align 4
  %27 = load i32, i32* @MMC_CMD_AC, align 4
  %28 = or i32 %26, %27
  %29 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %5, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %31 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MMC_CMD_RETRIES, align 4
  %34 = call i32 @mmc_wait_for_cmd(i32 %32, %struct.mmc_command* %5, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %37
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.mmc_command*, i32, i32) #1

declare dso_local i32 @mmc_wait_for_cmd(i32, %struct.mmc_command*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
