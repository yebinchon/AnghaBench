; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mxcmmc.c_mxcmci_start_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mxcmmc.c_mxcmci_start_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxcmci_host = type { i64, i32, %struct.mmc_command* }
%struct.mmc_command = type { i32, i32, i32 }

@CMD_DAT_CONT_RESPONSE_48BIT_CRC = common dso_local global i32 0, align 4
@CMD_DAT_CONT_RESPONSE_136BIT = common dso_local global i32 0, align 4
@CMD_DAT_CONT_RESPONSE_48BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unhandled response type 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@INT_READ_OP_EN = common dso_local global i32 0, align 4
@INT_WRITE_OP_DONE_EN = common dso_local global i32 0, align 4
@INT_END_CMD_RES_EN = common dso_local global i32 0, align 4
@MMC_REG_INT_CNTR = common dso_local global i64 0, align 8
@MMC_REG_CMD = common dso_local global i64 0, align 8
@MMC_REG_ARG = common dso_local global i64 0, align 8
@MMC_REG_CMD_DAT_CONT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxcmci_host*, %struct.mmc_command*, i32)* @mxcmci_start_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxcmci_start_cmd(%struct.mxcmci_host* %0, %struct.mmc_command* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxcmci_host*, align 8
  %6 = alloca %struct.mmc_command*, align 8
  %7 = alloca i32, align 4
  store %struct.mxcmci_host* %0, %struct.mxcmci_host** %5, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %9 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %8, i32 0, i32 2
  %10 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  %11 = icmp ne %struct.mmc_command* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %15 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %16 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %15, i32 0, i32 2
  store %struct.mmc_command* %14, %struct.mmc_command** %16, align 8
  %17 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %18 = call i32 @mmc_resp_type(%struct.mmc_command* %17)
  switch i32 %18, label %32 [
    i32 131, label %19
    i32 130, label %19
    i32 129, label %23
    i32 128, label %27
    i32 132, label %31
  ]

19:                                               ; preds = %3, %3
  %20 = load i32, i32* @CMD_DAT_CONT_RESPONSE_48BIT_CRC, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  br label %46

23:                                               ; preds = %3
  %24 = load i32, i32* @CMD_DAT_CONT_RESPONSE_136BIT, align 4
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %46

27:                                               ; preds = %3
  %28 = load i32, i32* @CMD_DAT_CONT_RESPONSE_48BIT, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %46

31:                                               ; preds = %3
  br label %46

32:                                               ; preds = %3
  %33 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %34 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @mmc_dev(i32 %35)
  %37 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %38 = call i32 @mmc_resp_type(%struct.mmc_command* %37)
  %39 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  %42 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %43 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %96

46:                                               ; preds = %31, %27, %23, %19
  %47 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %48 = call i64 @mxcmci_use_dma(%struct.mxcmci_host* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i32, i32* @INT_READ_OP_EN, align 4
  %52 = load i32, i32* @INT_WRITE_OP_DONE_EN, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @INT_END_CMD_RES_EN, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %57 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MMC_REG_INT_CNTR, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %55, i64 %60)
  br label %70

62:                                               ; preds = %46
  %63 = load i32, i32* @INT_END_CMD_RES_EN, align 4
  %64 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %65 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MMC_REG_INT_CNTR, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  br label %70

70:                                               ; preds = %62, %50
  %71 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %72 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %75 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MMC_REG_CMD, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writew(i32 %73, i64 %78)
  %80 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %81 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %84 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @MMC_REG_ARG, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writel(i32 %82, i64 %87)
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %91 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MMC_REG_CMD_DAT_CONT, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writew(i32 %89, i64 %94)
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %70, %32
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mmc_resp_type(%struct.mmc_command*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i64 @mxcmci_use_dma(%struct.mxcmci_host*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
