; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sd_ops.c_mmc_send_app_op_cond.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sd_ops.c_mmc_send_app_op_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_command = type { i32, i32, i32*, i32 }

@SD_APP_OP_COND = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R1 = common dso_local global i32 0, align 4
@MMC_RSP_R3 = common dso_local global i32 0, align 4
@MMC_CMD_BCR = common dso_local global i32 0, align 4
@MMC_CMD_RETRIES = common dso_local global i32 0, align 4
@R1_SPI_IDLE = common dso_local global i32 0, align 4
@MMC_CARD_BUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_send_app_op_cond(%struct.mmc_host* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mmc_command, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %11 = icmp ne %struct.mmc_host* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = call i32 @memset(%struct.mmc_command* %7, i32 0, i32 24)
  %16 = load i32, i32* @SD_APP_OP_COND, align 4
  %17 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 3
  store i32 %16, i32* %17, align 8
  %18 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %19 = call i64 @mmc_host_is_spi(%struct.mmc_host* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 1073741824
  %24 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  br label %28

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* @MMC_RSP_SPI_R1, align 4
  %30 = load i32, i32* @MMC_RSP_R3, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MMC_CMD_BCR, align 4
  %33 = or i32 %31, %32
  %34 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  store i32 100, i32* %8, align 4
  br label %35

35:                                               ; preds = %77, %28
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %80

38:                                               ; preds = %35
  %39 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %40 = load i32, i32* @MMC_CMD_RETRIES, align 4
  %41 = call i32 @mmc_wait_for_app_cmd(%struct.mmc_host* %39, i32* null, %struct.mmc_command* %7, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %80

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %80

49:                                               ; preds = %45
  %50 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %51 = call i64 @mmc_host_is_spi(%struct.mmc_host* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @R1_SPI_IDLE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  br label %80

62:                                               ; preds = %53
  br label %73

63:                                               ; preds = %49
  %64 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MMC_CARD_BUSY, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %80

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %62
  %74 = load i32, i32* @ETIMEDOUT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %9, align 4
  %76 = call i32 @mmc_delay(i32 10)
  br label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %8, align 4
  br label %35

80:                                               ; preds = %71, %61, %48, %44, %35
  %81 = load i32*, i32** %6, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %85 = call i64 @mmc_host_is_spi(%struct.mmc_host* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %6, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %87, %83, %80
  %94 = load i32, i32* %9, align 4
  ret i32 %94
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.mmc_command*, i32, i32) #1

declare dso_local i64 @mmc_host_is_spi(%struct.mmc_host*) #1

declare dso_local i32 @mmc_wait_for_app_cmd(%struct.mmc_host*, i32*, %struct.mmc_command*, i32) #1

declare dso_local i32 @mmc_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
