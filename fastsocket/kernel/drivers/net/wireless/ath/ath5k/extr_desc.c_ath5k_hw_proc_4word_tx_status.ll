; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_desc.c_ath5k_hw_proc_4word_tx_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_desc.c_ath5k_hw_proc_4word_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }
%struct.ath5k_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ath5k_hw_tx_status }
%struct.ath5k_hw_tx_status = type { i32, i32 }
%struct.ath5k_tx_status = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }

@AR5K_DESC_TX_STATUS1_DONE = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@AR5K_DESC_TX_STATUS0_SEND_TIMESTAMP = common dso_local global i32 0, align 4
@AR5K_DESC_TX_STATUS0_SHORT_RETRY_COUNT = common dso_local global i32 0, align 4
@AR5K_DESC_TX_STATUS0_LONG_RETRY_COUNT = common dso_local global i32 0, align 4
@AR5K_DESC_TX_STATUS1_SEQ_NUM = common dso_local global i32 0, align 4
@AR5K_DESC_TX_STATUS1_ACK_SIG_STRENGTH = common dso_local global i32 0, align 4
@AR5K_DESC_TX_STATUS1_XMIT_ANTENNA_5212 = common dso_local global i32 0, align 4
@AR5K_DESC_TX_STATUS1_FINAL_TS_IX_5212 = common dso_local global i32 0, align 4
@AR5K_DESC_TX_STATUS0_FRAME_XMIT_OK = common dso_local global i32 0, align 4
@AR5K_DESC_TX_STATUS0_EXCESSIVE_RETRIES = common dso_local global i32 0, align 4
@AR5K_TXERR_XRETRY = common dso_local global i32 0, align 4
@AR5K_DESC_TX_STATUS0_FIFO_UNDERRUN = common dso_local global i32 0, align 4
@AR5K_TXERR_FIFO = common dso_local global i32 0, align 4
@AR5K_DESC_TX_STATUS0_FILTERED = common dso_local global i32 0, align 4
@AR5K_TXERR_FILT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.ath5k_desc*, %struct.ath5k_tx_status*)* @ath5k_hw_proc_4word_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_proc_4word_tx_status(%struct.ath5k_hw* %0, %struct.ath5k_desc* %1, %struct.ath5k_tx_status* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca %struct.ath5k_desc*, align 8
  %7 = alloca %struct.ath5k_tx_status*, align 8
  %8 = alloca %struct.ath5k_hw_tx_status*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store %struct.ath5k_desc* %1, %struct.ath5k_desc** %6, align 8
  store %struct.ath5k_tx_status* %2, %struct.ath5k_tx_status** %7, align 8
  %11 = load %struct.ath5k_desc*, %struct.ath5k_desc** %6, align 8
  %12 = getelementptr inbounds %struct.ath5k_desc, %struct.ath5k_desc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.ath5k_hw_tx_status* %14, %struct.ath5k_hw_tx_status** %8, align 8
  %15 = load %struct.ath5k_hw_tx_status*, %struct.ath5k_hw_tx_status** %8, align 8
  %16 = getelementptr inbounds %struct.ath5k_hw_tx_status, %struct.ath5k_hw_tx_status* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ACCESS_ONCE(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @AR5K_DESC_TX_STATUS1_DONE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINPROGRESS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %114

30:                                               ; preds = %3
  %31 = load %struct.ath5k_hw_tx_status*, %struct.ath5k_hw_tx_status** %8, align 8
  %32 = getelementptr inbounds %struct.ath5k_hw_tx_status, %struct.ath5k_hw_tx_status* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ACCESS_ONCE(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @AR5K_DESC_TX_STATUS0_SEND_TIMESTAMP, align 4
  %37 = call i8* @AR5K_REG_MS(i32 %35, i32 %36)
  %38 = load %struct.ath5k_tx_status*, %struct.ath5k_tx_status** %7, align 8
  %39 = getelementptr inbounds %struct.ath5k_tx_status, %struct.ath5k_tx_status* %38, i32 0, i32 7
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @AR5K_DESC_TX_STATUS0_SHORT_RETRY_COUNT, align 4
  %42 = call i8* @AR5K_REG_MS(i32 %40, i32 %41)
  %43 = load %struct.ath5k_tx_status*, %struct.ath5k_tx_status** %7, align 8
  %44 = getelementptr inbounds %struct.ath5k_tx_status, %struct.ath5k_tx_status* %43, i32 0, i32 6
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @AR5K_DESC_TX_STATUS0_LONG_RETRY_COUNT, align 4
  %47 = call i8* @AR5K_REG_MS(i32 %45, i32 %46)
  %48 = load %struct.ath5k_tx_status*, %struct.ath5k_tx_status** %7, align 8
  %49 = getelementptr inbounds %struct.ath5k_tx_status, %struct.ath5k_tx_status* %48, i32 0, i32 5
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @AR5K_DESC_TX_STATUS1_SEQ_NUM, align 4
  %52 = call i8* @AR5K_REG_MS(i32 %50, i32 %51)
  %53 = load %struct.ath5k_tx_status*, %struct.ath5k_tx_status** %7, align 8
  %54 = getelementptr inbounds %struct.ath5k_tx_status, %struct.ath5k_tx_status* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @AR5K_DESC_TX_STATUS1_ACK_SIG_STRENGTH, align 4
  %57 = call i8* @AR5K_REG_MS(i32 %55, i32 %56)
  %58 = load %struct.ath5k_tx_status*, %struct.ath5k_tx_status** %7, align 8
  %59 = getelementptr inbounds %struct.ath5k_tx_status, %struct.ath5k_tx_status* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @AR5K_DESC_TX_STATUS1_XMIT_ANTENNA_5212, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 2, i32 1
  %66 = load %struct.ath5k_tx_status*, %struct.ath5k_tx_status** %7, align 8
  %67 = getelementptr inbounds %struct.ath5k_tx_status, %struct.ath5k_tx_status* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ath5k_tx_status*, %struct.ath5k_tx_status** %7, align 8
  %69 = getelementptr inbounds %struct.ath5k_tx_status, %struct.ath5k_tx_status* %68, i32 0, i32 1
  store i32 0, i32* %69, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @AR5K_DESC_TX_STATUS1_FINAL_TS_IX_5212, align 4
  %72 = call i8* @AR5K_REG_MS(i32 %70, i32 %71)
  %73 = load %struct.ath5k_tx_status*, %struct.ath5k_tx_status** %7, align 8
  %74 = getelementptr inbounds %struct.ath5k_tx_status, %struct.ath5k_tx_status* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @AR5K_DESC_TX_STATUS0_FRAME_XMIT_OK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %113, label %79

79:                                               ; preds = %30
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @AR5K_DESC_TX_STATUS0_EXCESSIVE_RETRIES, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @AR5K_TXERR_XRETRY, align 4
  %86 = load %struct.ath5k_tx_status*, %struct.ath5k_tx_status** %7, align 8
  %87 = getelementptr inbounds %struct.ath5k_tx_status, %struct.ath5k_tx_status* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %79
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @AR5K_DESC_TX_STATUS0_FIFO_UNDERRUN, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i32, i32* @AR5K_TXERR_FIFO, align 4
  %97 = load %struct.ath5k_tx_status*, %struct.ath5k_tx_status** %7, align 8
  %98 = getelementptr inbounds %struct.ath5k_tx_status, %struct.ath5k_tx_status* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %90
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @AR5K_DESC_TX_STATUS0_FILTERED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i32, i32* @AR5K_TXERR_FILT, align 4
  %108 = load %struct.ath5k_tx_status*, %struct.ath5k_tx_status** %7, align 8
  %109 = getelementptr inbounds %struct.ath5k_tx_status, %struct.ath5k_tx_status* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %106, %101
  br label %113

113:                                              ; preds = %112, %30
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %27
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @ACCESS_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @AR5K_REG_MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
