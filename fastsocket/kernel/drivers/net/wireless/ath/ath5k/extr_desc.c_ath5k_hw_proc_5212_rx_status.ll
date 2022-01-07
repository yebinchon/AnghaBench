; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_desc.c_ath5k_hw_proc_5212_rx_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_desc.c_ath5k_hw_proc_5212_rx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ath5k_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ath5k_hw_rx_status }
%struct.ath5k_hw_rx_status = type { i32, i32 }
%struct.ath5k_rx_status = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }

@AR5K_5212_RX_DESC_STATUS1_DONE = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@AR5K_5212_RX_DESC_STATUS0_DATA_LEN = common dso_local global i32 0, align 4
@AR5K_5212_RX_DESC_STATUS0_RECEIVE_SIGNAL = common dso_local global i32 0, align 4
@AR5K_5212_RX_DESC_STATUS0_RECEIVE_RATE = common dso_local global i32 0, align 4
@AR5K_5212_RX_DESC_STATUS0_RECEIVE_ANTENNA = common dso_local global i32 0, align 4
@AR5K_5212_RX_DESC_STATUS0_MORE = common dso_local global i32 0, align 4
@AR5K_5212_RX_DESC_STATUS1_RECEIVE_TIMESTAMP = common dso_local global i32 0, align 4
@AR5K_5212_RX_DESC_STATUS1_KEY_INDEX_VALID = common dso_local global i32 0, align 4
@AR5K_5212_RX_DESC_STATUS1_KEY_INDEX = common dso_local global i32 0, align 4
@AR5K_RXKEYIX_INVALID = common dso_local global i8* null, align 8
@AR5K_5212_RX_DESC_STATUS1_FRAME_RECEIVE_OK = common dso_local global i32 0, align 4
@AR5K_5212_RX_DESC_STATUS1_CRC_ERROR = common dso_local global i32 0, align 4
@AR5K_RXERR_CRC = common dso_local global i32 0, align 4
@AR5K_5212_RX_DESC_STATUS1_PHY_ERROR = common dso_local global i32 0, align 4
@AR5K_RXERR_PHY = common dso_local global i32 0, align 4
@AR5K_5212_RX_DESC_STATUS1_PHY_ERROR_CODE = common dso_local global i32 0, align 4
@AR5K_5212_RX_DESC_STATUS1_DECRYPT_CRC_ERROR = common dso_local global i32 0, align 4
@AR5K_RXERR_DECRYPT = common dso_local global i32 0, align 4
@AR5K_5212_RX_DESC_STATUS1_MIC_ERROR = common dso_local global i32 0, align 4
@AR5K_RXERR_MIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.ath5k_desc*, %struct.ath5k_rx_status*)* @ath5k_hw_proc_5212_rx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_proc_5212_rx_status(%struct.ath5k_hw* %0, %struct.ath5k_desc* %1, %struct.ath5k_rx_status* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca %struct.ath5k_desc*, align 8
  %7 = alloca %struct.ath5k_rx_status*, align 8
  %8 = alloca %struct.ath5k_hw_rx_status*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store %struct.ath5k_desc* %1, %struct.ath5k_desc** %6, align 8
  store %struct.ath5k_rx_status* %2, %struct.ath5k_rx_status** %7, align 8
  %11 = load %struct.ath5k_desc*, %struct.ath5k_desc** %6, align 8
  %12 = getelementptr inbounds %struct.ath5k_desc, %struct.ath5k_desc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.ath5k_hw_rx_status* %14, %struct.ath5k_hw_rx_status** %8, align 8
  %15 = load %struct.ath5k_hw_rx_status*, %struct.ath5k_hw_rx_status** %8, align 8
  %16 = getelementptr inbounds %struct.ath5k_hw_rx_status, %struct.ath5k_hw_rx_status* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ACCESS_ONCE(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @AR5K_5212_RX_DESC_STATUS1_DONE, align 4
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
  br label %153

30:                                               ; preds = %3
  %31 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %32 = call i32 @memset(%struct.ath5k_rx_status* %31, i32 0, i32 64)
  %33 = load %struct.ath5k_hw_rx_status*, %struct.ath5k_hw_rx_status** %8, align 8
  %34 = getelementptr inbounds %struct.ath5k_hw_rx_status, %struct.ath5k_hw_rx_status* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ACCESS_ONCE(i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @AR5K_5212_RX_DESC_STATUS0_DATA_LEN, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %41 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @AR5K_5212_RX_DESC_STATUS0_RECEIVE_SIGNAL, align 4
  %44 = call i8* @AR5K_REG_MS(i32 %42, i32 %43)
  %45 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %46 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %45, i32 0, i32 8
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @AR5K_5212_RX_DESC_STATUS0_RECEIVE_RATE, align 4
  %49 = call i8* @AR5K_REG_MS(i32 %47, i32 %48)
  %50 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %51 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %50, i32 0, i32 7
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @AR5K_5212_RX_DESC_STATUS0_RECEIVE_ANTENNA, align 4
  %54 = call i8* @AR5K_REG_MS(i32 %52, i32 %53)
  %55 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %56 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %55, i32 0, i32 6
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @AR5K_5212_RX_DESC_STATUS0_MORE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %65 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @AR5K_5212_RX_DESC_STATUS1_RECEIVE_TIMESTAMP, align 4
  %68 = call i8* @AR5K_REG_MS(i32 %66, i32 %67)
  %69 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %70 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %69, i32 0, i32 5
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @AR5K_5212_RX_DESC_STATUS1_KEY_INDEX_VALID, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %30
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @AR5K_5212_RX_DESC_STATUS1_KEY_INDEX, align 4
  %78 = call i8* @AR5K_REG_MS(i32 %76, i32 %77)
  %79 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %80 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  br label %85

81:                                               ; preds = %30
  %82 = load i8*, i8** @AR5K_RXKEYIX_INVALID, align 8
  %83 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %84 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %81, %75
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @AR5K_5212_RX_DESC_STATUS1_FRAME_RECEIVE_OK, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %152, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @AR5K_5212_RX_DESC_STATUS1_CRC_ERROR, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i32, i32* @AR5K_RXERR_CRC, align 4
  %97 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %98 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %90
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @AR5K_5212_RX_DESC_STATUS1_PHY_ERROR, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %129

106:                                              ; preds = %101
  %107 = load i32, i32* @AR5K_RXERR_PHY, align 4
  %108 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %109 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @AR5K_5212_RX_DESC_STATUS1_PHY_ERROR_CODE, align 4
  %114 = call i8* @AR5K_REG_MS(i32 %112, i32 %113)
  %115 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %116 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %115, i32 0, i32 3
  store i8* %114, i8** %116, align 8
  %117 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %118 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %106
  %123 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %124 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %125 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %124, i32 0, i32 3
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @ath5k_ani_phy_error_report(%struct.ath5k_hw* %123, i8* %126)
  br label %128

128:                                              ; preds = %122, %106
  br label %129

129:                                              ; preds = %128, %101
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @AR5K_5212_RX_DESC_STATUS1_DECRYPT_CRC_ERROR, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load i32, i32* @AR5K_RXERR_DECRYPT, align 4
  %136 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %137 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %134, %129
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @AR5K_5212_RX_DESC_STATUS1_MIC_ERROR, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load i32, i32* @AR5K_RXERR_MIC, align 4
  %147 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %148 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %145, %140
  br label %152

152:                                              ; preds = %151, %85
  store i32 0, i32* %4, align 4
  br label %153

153:                                              ; preds = %152, %27
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @ACCESS_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.ath5k_rx_status*, i32, i32) #1

declare dso_local i8* @AR5K_REG_MS(i32, i32) #1

declare dso_local i32 @ath5k_ani_phy_error_report(%struct.ath5k_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
