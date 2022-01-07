; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_receive_frame_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_receive_frame_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.ath5k_rx_status = type { i32, i32, i64, i32, i64 }

@AR5K_RXERR_CRC = common dso_local global i32 0, align 4
@AR5K_RXERR_FIFO = common dso_local global i32 0, align 4
@AR5K_RXERR_PHY = common dso_local global i32 0, align 4
@AR5K_RXERR_DECRYPT = common dso_local global i32 0, align 4
@AR5K_RXKEYIX_INVALID = common dso_local global i64 0, align 8
@AR5K_RXERR_MIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.ath5k_rx_status*)* @ath5k_receive_frame_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_receive_frame_ok(%struct.ath5k_hw* %0, %struct.ath5k_rx_status* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca %struct.ath5k_rx_status*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store %struct.ath5k_rx_status* %1, %struct.ath5k_rx_status** %5, align 8
  %6 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %7 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 8
  %11 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %12 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %13
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 4
  %21 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %22 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %137

26:                                               ; preds = %2
  %27 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %28 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @AR5K_RXERR_CRC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %35 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %33, %26
  %40 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %41 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @AR5K_RXERR_FIFO, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %48 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %39
  %53 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %54 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @AR5K_RXERR_PHY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %87

59:                                               ; preds = %52
  %60 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %61 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  %65 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %66 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %59
  %70 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %71 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 32
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %76 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %80 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %74, %69, %59
  store i32 0, i32* %3, align 4
  br label %150

87:                                               ; preds = %52
  %88 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %89 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @AR5K_RXERR_DECRYPT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %87
  %95 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %96 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  %100 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %101 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @AR5K_RXKEYIX_INVALID, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %94
  %106 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %107 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @AR5K_RXERR_CRC, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %105
  store i32 1, i32* %3, align 4
  br label %150

113:                                              ; preds = %105, %94
  br label %114

114:                                              ; preds = %113, %87
  %115 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %116 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @AR5K_RXERR_MIC, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  %122 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %123 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  store i32 1, i32* %3, align 4
  br label %150

127:                                              ; preds = %114
  %128 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %129 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @AR5K_RXERR_DECRYPT, align 4
  %132 = xor i32 %131, -1
  %133 = and i32 %130, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  store i32 0, i32* %3, align 4
  br label %150

136:                                              ; preds = %127
  br label %137

137:                                              ; preds = %136, %2
  %138 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %139 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @unlikely(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %145 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 8
  store i32 0, i32* %3, align 4
  br label %150

149:                                              ; preds = %137
  store i32 1, i32* %3, align 4
  br label %150

150:                                              ; preds = %149, %143, %135, %121, %112, %86
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
