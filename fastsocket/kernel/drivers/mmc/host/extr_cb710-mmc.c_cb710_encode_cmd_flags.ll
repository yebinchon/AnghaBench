; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_cb710-mmc.c_cb710_encode_cmd_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_cb710-mmc.c_cb710_encode_cmd_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb710_mmc_reader = type { i32 }
%struct.mmc_command = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MMC_CMD_MASK = common dso_local global i32 0, align 4
@CB710_MMC_CMD_AC = common dso_local global i32 0, align 4
@CB710_MMC_CMD_ADTC = common dso_local global i32 0, align 4
@CB710_MMC_CMD_BC = common dso_local global i32 0, align 4
@CB710_MMC_CMD_BCR = common dso_local global i32 0, align 4
@MMC_RSP_BUSY = common dso_local global i32 0, align 4
@CB710_MMC_RSP_BUSY = common dso_local global i32 0, align 4
@CB710_MMC_CMD_CODE_SHIFT = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@CB710_MMC_DATA_READ = common dso_local global i32 0, align 4
@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@CB710_MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@CB710_MMC_RSP_136 = common dso_local global i32 0, align 4
@MMC_RSP_CRC = common dso_local global i32 0, align 4
@CB710_MMC_RSP_NO_CRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cb710_mmc_reader*, %struct.mmc_command*)* @cb710_encode_cmd_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb710_encode_cmd_flags(%struct.cb710_mmc_reader* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.cb710_mmc_reader*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cb710_mmc_reader* %0, %struct.cb710_mmc_reader** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %7 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %8 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MMC_CMD_MASK, align 4
  %12 = and i32 %10, %11
  switch i32 %12, label %21 [
    i32 131, label %13
    i32 130, label %15
    i32 129, label %17
    i32 128, label %19
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @CB710_MMC_CMD_AC, align 4
  store i32 %14, i32* %6, align 4
  br label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @CB710_MMC_CMD_ADTC, align 4
  store i32 %16, i32* %6, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @CB710_MMC_CMD_BC, align 4
  store i32 %18, i32* %6, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @CB710_MMC_CMD_BCR, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %2, %19, %17, %15, %13
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @MMC_RSP_BUSY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @CB710_MMC_RSP_BUSY, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %32 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CB710_MMC_CMD_CODE_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %39 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = icmp ne %struct.TYPE_2__* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %30
  %43 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %44 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MMC_DATA_READ, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i32, i32* @CB710_MMC_DATA_READ, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %51, %42, %30
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %55
  %61 = load i32, i32* @CB710_MMC_RSP_PRESENT, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @MMC_RSP_136, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load i32, i32* @CB710_MMC_RSP_136, align 4
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %68, %60
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @MMC_RSP_CRC, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @CB710_MMC_RSP_NO_CRC, align 4
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %77, %72
  br label %82

82:                                               ; preds = %81, %55
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
