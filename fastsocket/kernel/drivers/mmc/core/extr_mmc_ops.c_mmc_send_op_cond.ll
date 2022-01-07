; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_mmc_ops.c_mmc_send_op_cond.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_mmc_ops.c_mmc_send_op_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_command = type { i32, i32*, i64, i32 }

@MMC_SEND_OP_COND = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R1 = common dso_local global i32 0, align 4
@MMC_RSP_R3 = common dso_local global i32 0, align 4
@MMC_CMD_BCR = common dso_local global i32 0, align 4
@R1_SPI_IDLE = common dso_local global i32 0, align 4
@MMC_CARD_BUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_send_op_cond(%struct.mmc_host* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.mmc_command, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %11 = icmp ne %struct.mmc_host* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = call i32 @memset(%struct.mmc_command* %7, i32 0, i32 32)
  %16 = load i32, i32* @MMC_SEND_OP_COND, align 4
  %17 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 3
  store i32 %16, i32* %17, align 8
  %18 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %19 = call i64 @mmc_host_is_spi(%struct.mmc_host* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %24

22:                                               ; preds = %3
  %23 = load i64, i64* %5, align 8
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi i64 [ 0, %21 ], [ %23, %22 ]
  %26 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 2
  store i64 %25, i64* %26, align 8
  %27 = load i32, i32* @MMC_RSP_SPI_R1, align 4
  %28 = load i32, i32* @MMC_RSP_R3, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @MMC_CMD_BCR, align 4
  %31 = or i32 %29, %30
  %32 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  store i32 100, i32* %8, align 4
  br label %33

33:                                               ; preds = %74, %24
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %77

36:                                               ; preds = %33
  %37 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %38 = call i32 @mmc_wait_for_cmd(%struct.mmc_host* %37, %struct.mmc_command* %7, i32 0)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %77

42:                                               ; preds = %36
  %43 = load i64, i64* %5, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %77

46:                                               ; preds = %42
  %47 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %48 = call i64 @mmc_host_is_spi(%struct.mmc_host* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @R1_SPI_IDLE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  br label %77

59:                                               ; preds = %50
  br label %70

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MMC_CARD_BUSY, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %77

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %59
  %71 = load i32, i32* @ETIMEDOUT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  %73 = call i32 @mmc_delay(i32 10)
  br label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %8, align 4
  br label %33

77:                                               ; preds = %68, %58, %45, %41, %33
  %78 = load i64*, i64** %6, align 8
  %79 = icmp ne i64* %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %82 = call i64 @mmc_host_is_spi(%struct.mmc_host* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64*, i64** %6, align 8
  store i64 %89, i64* %90, align 8
  br label %91

91:                                               ; preds = %84, %80, %77
  %92 = load i32, i32* %9, align 4
  ret i32 %92
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.mmc_command*, i32, i32) #1

declare dso_local i64 @mmc_host_is_spi(%struct.mmc_host*) #1

declare dso_local i32 @mmc_wait_for_cmd(%struct.mmc_host*, %struct.mmc_command*, i32) #1

declare dso_local i32 @mmc_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
