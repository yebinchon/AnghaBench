; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AdvSendIdleCmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AdvSendIdleCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@ASC_MC_IDLE_CMD_STATUS = common dso_local global i32 0, align 4
@ASC_MC_IDLE_CMD_PARAMETER = common dso_local global i32 0, align 4
@ASC_MC_IDLE_CMD = common dso_local global i32 0, align 4
@IOPB_TICKLE = common dso_local global i32 0, align 4
@ADV_TICKLE_B = common dso_local global i32 0, align 4
@ADV_CHIP_ASC3550 = common dso_local global i64 0, align 8
@ADV_TICKLE_NOP = common dso_local global i32 0, align 4
@SCSI_WAIT_100_MSEC = common dso_local global i64 0, align 8
@SCSI_US_PER_MSEC = common dso_local global i64 0, align 8
@ADV_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i64)* @AdvSendIdleCmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AdvSendIdleCmd(%struct.TYPE_3__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @ASC_MC_IDLE_CMD_STATUS, align 4
  %17 = call i32 @AdvWriteWordLram(i32 %15, i32 %16, i32 0)
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @ASC_MC_IDLE_CMD_PARAMETER, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @cpu_to_le32(i64 %20)
  %22 = call i32 @AdvWriteDWordLramNoSwap(i32 %18, i32 %19, i32 %21)
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @ASC_MC_IDLE_CMD, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @AdvWriteWordLram(i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @IOPB_TICKLE, align 4
  %29 = load i32, i32* @ADV_TICKLE_B, align 4
  %30 = call i32 @AdvWriteByteRegister(i32 %27, i32 %28, i32 %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ADV_CHIP_ASC3550, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %3
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @IOPB_TICKLE, align 4
  %39 = load i32, i32* @ADV_TICKLE_NOP, align 4
  %40 = call i32 @AdvWriteByteRegister(i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %3
  store i64 0, i64* %9, align 8
  br label %42

42:                                               ; preds = %66, %41
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @SCSI_WAIT_100_MSEC, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %42
  store i64 0, i64* %10, align 8
  br label %47

47:                                               ; preds = %62, %46
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @SCSI_US_PER_MSEC, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @ASC_MC_IDLE_CMD_STATUS, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @AdvReadWordLram(i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %72

60:                                               ; preds = %51
  %61 = call i32 @udelay(i32 1)
  br label %62

62:                                               ; preds = %60
  %63 = load i64, i64* %10, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %10, align 8
  br label %47

65:                                               ; preds = %47
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %9, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %9, align 8
  br label %42

69:                                               ; preds = %42
  %70 = call i32 (...) @BUG()
  %71 = load i32, i32* @ADV_ERROR, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %69, %58
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @AdvWriteWordLram(i32, i32, i32) #1

declare dso_local i32 @AdvWriteDWordLramNoSwap(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @AdvWriteByteRegister(i32, i32, i32) #1

declare dso_local i32 @AdvReadWordLram(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
