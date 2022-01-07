; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_create_tx_descriptor_plcp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_create_tx_descriptor_plcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.txentry_desc = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.rt2x00_rate = type { i32, i32, i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_tx_rate* }
%struct.ieee80211_tx_rate = type { i32 }

@ENTRY_TXD_FIRST_FRAGMENT = common dso_local global i32 0, align 4
@IFS_BACKOFF = common dso_local global i32 0, align 4
@IFS_SIFS = common dso_local global i32 0, align 4
@DEV_RATE_OFDM = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.sk_buff*, %struct.txentry_desc*, %struct.rt2x00_rate*)* @rt2x00queue_create_tx_descriptor_plcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00queue_create_tx_descriptor_plcp(%struct.rt2x00_dev* %0, %struct.sk_buff* %1, %struct.txentry_desc* %2, %struct.rt2x00_rate* %3) #0 {
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.txentry_desc*, align 8
  %8 = alloca %struct.rt2x00_rate*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca %struct.ieee80211_tx_rate*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.txentry_desc* %2, %struct.txentry_desc** %7, align 8
  store %struct.rt2x00_rate* %3, %struct.rt2x00_rate** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %14)
  store %struct.ieee80211_tx_info* %15, %struct.ieee80211_tx_info** %9, align 8
  %16 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %17 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %18, align 8
  %20 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %19, i64 0
  store %struct.ieee80211_tx_rate* %20, %struct.ieee80211_tx_rate** %10, align 8
  %21 = load i32, i32* @ENTRY_TXD_FIRST_FRAGMENT, align 4
  %22 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %23 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %22, i32 0, i32 1
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = load i32, i32* @IFS_BACKOFF, align 4
  %28 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %29 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 4
  store i32 %27, i32* %31, align 4
  br label %38

32:                                               ; preds = %4
  %33 = load i32, i32* @IFS_SIFS, align 4
  %34 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %35 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 4
  store i32 %33, i32* %37, align 4
  br label %38

38:                                               ; preds = %32, %26
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 4
  store i32 %42, i32* %11, align 4
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call i64 @rt2x00crypto_tx_overhead(%struct.rt2x00_dev* %43, %struct.sk_buff* %44)
  %46 = load i32, i32* %11, align 4
  %47 = zext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load %struct.rt2x00_rate*, %struct.rt2x00_rate** %8, align 8
  %51 = getelementptr inbounds %struct.rt2x00_rate, %struct.rt2x00_rate* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %54 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %58 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i32 4, i32* %60, align 4
  %61 = load %struct.rt2x00_rate*, %struct.rt2x00_rate** %8, align 8
  %62 = getelementptr inbounds %struct.rt2x00_rate, %struct.rt2x00_rate* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DEV_RATE_OFDM, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %38
  %68 = load i32, i32* %11, align 4
  %69 = lshr i32 %68, 6
  %70 = and i32 %69, 63
  %71 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %72 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* %11, align 4
  %76 = and i32 %75, 63
  %77 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %78 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  store i32 %76, i32* %80, align 4
  br label %140

81:                                               ; preds = %38
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.rt2x00_rate*, %struct.rt2x00_rate** %8, align 8
  %84 = getelementptr inbounds %struct.rt2x00_rate, %struct.rt2x00_rate* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @GET_DURATION_RES(i32 %82, i32 %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.rt2x00_rate*, %struct.rt2x00_rate** %8, align 8
  %89 = getelementptr inbounds %struct.rt2x00_rate, %struct.rt2x00_rate* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @GET_DURATION(i32 %87, i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %81
  %95 = load i32, i32* %12, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %12, align 4
  %97 = load %struct.rt2x00_rate*, %struct.rt2x00_rate** %8, align 8
  %98 = getelementptr inbounds %struct.rt2x00_rate, %struct.rt2x00_rate* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 110
  br i1 %100, label %101, label %111

101:                                              ; preds = %94
  %102 = load i32, i32* %13, align 4
  %103 = icmp ule i32 %102, 30
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %106 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, 128
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %104, %101, %94
  br label %112

112:                                              ; preds = %111, %81
  %113 = load i32, i32* %12, align 4
  %114 = lshr i32 %113, 8
  %115 = and i32 %114, 255
  %116 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %117 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* %12, align 4
  %121 = and i32 %120, 255
  %122 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %123 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  store i32 %121, i32* %125, align 4
  %126 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %10, align 8
  %127 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @IEEE80211_TX_RC_USE_SHORT_PREAMBLE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %112
  %133 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %134 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, 8
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %132, %112
  br label %140

140:                                              ; preds = %139, %67
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @rt2x00crypto_tx_overhead(%struct.rt2x00_dev*, %struct.sk_buff*) #1

declare dso_local i32 @GET_DURATION_RES(i32, i32) #1

declare dso_local i32 @GET_DURATION(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
