; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_desc.c_ath5k_hw_proc_2word_tx_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_desc.c_ath5k_hw_proc_2word_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }
%struct.ath5k_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ath5k_hw_tx_status }
%struct.ath5k_hw_tx_status = type { i32, i32 }
%struct.ath5k_tx_status = type { i32, i32, i64, i8*, i8*, i8*, i8*, i8* }

@AR5K_DESC_TX_STATUS1_DONE = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@AR5K_DESC_TX_STATUS0_SEND_TIMESTAMP = common dso_local global i32 0, align 4
@AR5K_DESC_TX_STATUS0_SHORT_RETRY_COUNT = common dso_local global i32 0, align 4
@AR5K_DESC_TX_STATUS0_LONG_RETRY_COUNT = common dso_local global i32 0, align 4
@AR5K_DESC_TX_STATUS1_SEQ_NUM = common dso_local global i32 0, align 4
@AR5K_DESC_TX_STATUS1_ACK_SIG_STRENGTH = common dso_local global i32 0, align 4
@AR5K_DESC_TX_STATUS0_FRAME_XMIT_OK = common dso_local global i32 0, align 4
@AR5K_DESC_TX_STATUS0_EXCESSIVE_RETRIES = common dso_local global i32 0, align 4
@AR5K_TXERR_XRETRY = common dso_local global i32 0, align 4
@AR5K_DESC_TX_STATUS0_FIFO_UNDERRUN = common dso_local global i32 0, align 4
@AR5K_TXERR_FIFO = common dso_local global i32 0, align 4
@AR5K_DESC_TX_STATUS0_FILTERED = common dso_local global i32 0, align 4
@AR5K_TXERR_FILT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.ath5k_desc*, %struct.ath5k_tx_status*)* @ath5k_hw_proc_2word_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_proc_2word_tx_status(%struct.ath5k_hw* %0, %struct.ath5k_desc* %1, %struct.ath5k_tx_status* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca %struct.ath5k_desc*, align 8
  %7 = alloca %struct.ath5k_tx_status*, align 8
  %8 = alloca %struct.ath5k_hw_tx_status*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store %struct.ath5k_desc* %1, %struct.ath5k_desc** %6, align 8
  store %struct.ath5k_tx_status* %2, %struct.ath5k_tx_status** %7, align 8
  %9 = load %struct.ath5k_desc*, %struct.ath5k_desc** %6, align 8
  %10 = getelementptr inbounds %struct.ath5k_desc, %struct.ath5k_desc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.ath5k_hw_tx_status* %12, %struct.ath5k_hw_tx_status** %8, align 8
  %13 = load %struct.ath5k_hw_tx_status*, %struct.ath5k_hw_tx_status** %8, align 8
  %14 = getelementptr inbounds %struct.ath5k_hw_tx_status, %struct.ath5k_hw_tx_status* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AR5K_DESC_TX_STATUS1_DONE, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINPROGRESS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %114

25:                                               ; preds = %3
  %26 = load %struct.ath5k_hw_tx_status*, %struct.ath5k_hw_tx_status** %8, align 8
  %27 = getelementptr inbounds %struct.ath5k_hw_tx_status, %struct.ath5k_hw_tx_status* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AR5K_DESC_TX_STATUS0_SEND_TIMESTAMP, align 4
  %30 = call i8* @AR5K_REG_MS(i32 %28, i32 %29)
  %31 = load %struct.ath5k_tx_status*, %struct.ath5k_tx_status** %7, align 8
  %32 = getelementptr inbounds %struct.ath5k_tx_status, %struct.ath5k_tx_status* %31, i32 0, i32 7
  store i8* %30, i8** %32, align 8
  %33 = load %struct.ath5k_hw_tx_status*, %struct.ath5k_hw_tx_status** %8, align 8
  %34 = getelementptr inbounds %struct.ath5k_hw_tx_status, %struct.ath5k_hw_tx_status* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AR5K_DESC_TX_STATUS0_SHORT_RETRY_COUNT, align 4
  %37 = call i8* @AR5K_REG_MS(i32 %35, i32 %36)
  %38 = load %struct.ath5k_tx_status*, %struct.ath5k_tx_status** %7, align 8
  %39 = getelementptr inbounds %struct.ath5k_tx_status, %struct.ath5k_tx_status* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ath5k_hw_tx_status*, %struct.ath5k_hw_tx_status** %8, align 8
  %41 = getelementptr inbounds %struct.ath5k_hw_tx_status, %struct.ath5k_hw_tx_status* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AR5K_DESC_TX_STATUS0_LONG_RETRY_COUNT, align 4
  %44 = call i8* @AR5K_REG_MS(i32 %42, i32 %43)
  %45 = load %struct.ath5k_tx_status*, %struct.ath5k_tx_status** %7, align 8
  %46 = getelementptr inbounds %struct.ath5k_tx_status, %struct.ath5k_tx_status* %45, i32 0, i32 5
  store i8* %44, i8** %46, align 8
  %47 = load %struct.ath5k_hw_tx_status*, %struct.ath5k_hw_tx_status** %8, align 8
  %48 = getelementptr inbounds %struct.ath5k_hw_tx_status, %struct.ath5k_hw_tx_status* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @AR5K_DESC_TX_STATUS1_SEQ_NUM, align 4
  %51 = call i8* @AR5K_REG_MS(i32 %49, i32 %50)
  %52 = load %struct.ath5k_tx_status*, %struct.ath5k_tx_status** %7, align 8
  %53 = getelementptr inbounds %struct.ath5k_tx_status, %struct.ath5k_tx_status* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load %struct.ath5k_hw_tx_status*, %struct.ath5k_hw_tx_status** %8, align 8
  %55 = getelementptr inbounds %struct.ath5k_hw_tx_status, %struct.ath5k_hw_tx_status* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @AR5K_DESC_TX_STATUS1_ACK_SIG_STRENGTH, align 4
  %58 = call i8* @AR5K_REG_MS(i32 %56, i32 %57)
  %59 = load %struct.ath5k_tx_status*, %struct.ath5k_tx_status** %7, align 8
  %60 = getelementptr inbounds %struct.ath5k_tx_status, %struct.ath5k_tx_status* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load %struct.ath5k_tx_status*, %struct.ath5k_tx_status** %7, align 8
  %62 = getelementptr inbounds %struct.ath5k_tx_status, %struct.ath5k_tx_status* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.ath5k_tx_status*, %struct.ath5k_tx_status** %7, align 8
  %64 = getelementptr inbounds %struct.ath5k_tx_status, %struct.ath5k_tx_status* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load %struct.ath5k_tx_status*, %struct.ath5k_tx_status** %7, align 8
  %66 = getelementptr inbounds %struct.ath5k_tx_status, %struct.ath5k_tx_status* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.ath5k_hw_tx_status*, %struct.ath5k_hw_tx_status** %8, align 8
  %68 = getelementptr inbounds %struct.ath5k_hw_tx_status, %struct.ath5k_hw_tx_status* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @AR5K_DESC_TX_STATUS0_FRAME_XMIT_OK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %113, label %73

73:                                               ; preds = %25
  %74 = load %struct.ath5k_hw_tx_status*, %struct.ath5k_hw_tx_status** %8, align 8
  %75 = getelementptr inbounds %struct.ath5k_hw_tx_status, %struct.ath5k_hw_tx_status* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AR5K_DESC_TX_STATUS0_EXCESSIVE_RETRIES, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i32, i32* @AR5K_TXERR_XRETRY, align 4
  %82 = load %struct.ath5k_tx_status*, %struct.ath5k_tx_status** %7, align 8
  %83 = getelementptr inbounds %struct.ath5k_tx_status, %struct.ath5k_tx_status* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %73
  %87 = load %struct.ath5k_hw_tx_status*, %struct.ath5k_hw_tx_status** %8, align 8
  %88 = getelementptr inbounds %struct.ath5k_hw_tx_status, %struct.ath5k_hw_tx_status* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @AR5K_DESC_TX_STATUS0_FIFO_UNDERRUN, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load i32, i32* @AR5K_TXERR_FIFO, align 4
  %95 = load %struct.ath5k_tx_status*, %struct.ath5k_tx_status** %7, align 8
  %96 = getelementptr inbounds %struct.ath5k_tx_status, %struct.ath5k_tx_status* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %93, %86
  %100 = load %struct.ath5k_hw_tx_status*, %struct.ath5k_hw_tx_status** %8, align 8
  %101 = getelementptr inbounds %struct.ath5k_hw_tx_status, %struct.ath5k_hw_tx_status* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @AR5K_DESC_TX_STATUS0_FILTERED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load i32, i32* @AR5K_TXERR_FILT, align 4
  %108 = load %struct.ath5k_tx_status*, %struct.ath5k_tx_status** %7, align 8
  %109 = getelementptr inbounds %struct.ath5k_tx_status, %struct.ath5k_tx_status* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %106, %99
  br label %113

113:                                              ; preds = %112, %25
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %22
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @AR5K_REG_MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
