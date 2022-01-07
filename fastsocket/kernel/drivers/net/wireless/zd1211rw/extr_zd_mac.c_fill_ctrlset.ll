; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_mac.c_fill_ctrlset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_mac.c_fill_ctrlset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_mac = type { i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_rate = type { i32, i32 }
%struct.zd_ctrlset = type { i64, i8*, i8*, i32, i64, i8* }
%struct.ieee80211_tx_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@FCS_LEN = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_mac*, %struct.sk_buff*)* @fill_ctrlset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_ctrlset(%struct.zd_mac* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zd_mac*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_rate*, align 8
  %11 = alloca %struct.zd_ctrlset*, align 8
  %12 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.zd_mac* %0, %struct.zd_mac** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %16, %struct.ieee80211_hdr** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FCS_LEN, align 4
  %21 = add i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i64 @skb_push(%struct.sk_buff* %22, i32 48)
  %24 = inttoptr i64 %23 to %struct.zd_ctrlset*
  store %struct.zd_ctrlset* %24, %struct.zd_ctrlset** %11, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %25)
  store %struct.ieee80211_tx_info* %26, %struct.ieee80211_tx_info** %12, align 8
  %27 = load i32, i32* %8, align 4
  %28 = icmp ule i32 %27, 65535
  %29 = zext i1 %28 to i32
  %30 = call i32 @ZD_ASSERT(i32 %29)
  %31 = load %struct.zd_mac*, %struct.zd_mac** %4, align 8
  %32 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %35 = call %struct.ieee80211_rate* @ieee80211_get_tx_rate(i32 %33, %struct.ieee80211_tx_info* %34)
  store %struct.ieee80211_rate* %35, %struct.ieee80211_rate** %10, align 8
  %36 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %10, align 8
  %37 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %11, align 8
  %40 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %42 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IEEE80211_TX_RC_USE_SHORT_PREAMBLE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %2
  %52 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %10, align 8
  %53 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %11, align 8
  %56 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %51, %2
  %58 = load i32, i32* %8, align 4
  %59 = call i8* @cpu_to_le16(i32 %58)
  %60 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %11, align 8
  %61 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.zd_mac*, %struct.zd_mac** %4, align 8
  %63 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %11, align 8
  %64 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %65 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %66 = call i32 @cs_set_control(%struct.zd_mac* %62, %struct.zd_ctrlset* %63, %struct.ieee80211_hdr* %64, %struct.ieee80211_tx_info* %65)
  %67 = load i32, i32* %8, align 4
  %68 = zext i32 %67 to i64
  %69 = add i64 %68, 48
  %70 = add i64 %69, 10
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ule i32 %72, 65535
  %74 = zext i1 %73 to i32
  %75 = call i32 @ZD_ASSERT(i32 %74)
  %76 = load %struct.zd_mac*, %struct.zd_mac** %4, align 8
  %77 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %76, i32 0, i32 0
  %78 = call i64 @zd_chip_is_zd1211b(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %57
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = sub i32 %81, %82
  br label %86

84:                                               ; preds = %57
  %85 = load i32, i32* %9, align 4
  br label %86

86:                                               ; preds = %84, %80
  %87 = phi i32 [ %83, %80 ], [ %85, %84 ]
  %88 = call i8* @cpu_to_le16(i32 %87)
  %89 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %11, align 8
  %90 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %89, i32 0, i32 5
  store i8* %88, i8** %90, align 8
  %91 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %11, align 8
  %92 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %91, i32 0, i32 4
  store i64 0, i64* %92, align 8
  %93 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %11, align 8
  %94 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %93, i32 0, i32 4
  %95 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %11, align 8
  %96 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ZD_RATE(i32 %97)
  %99 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %11, align 8
  %100 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @le16_to_cpu(i8* %101)
  %103 = call i32 @zd_calc_tx_length_us(i64* %94, i32 %98, i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %86
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %115

108:                                              ; preds = %86
  %109 = load i32, i32* %6, align 4
  %110 = call i8* @cpu_to_le16(i32 %109)
  %111 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %11, align 8
  %112 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  %113 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %11, align 8
  %114 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %113, i32 0, i32 0
  store i64 0, i64* %114, align 8
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %108, %106
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local %struct.ieee80211_rate* @ieee80211_get_tx_rate(i32, %struct.ieee80211_tx_info*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cs_set_control(%struct.zd_mac*, %struct.zd_ctrlset*, %struct.ieee80211_hdr*, %struct.ieee80211_tx_info*) #1

declare dso_local i64 @zd_chip_is_zd1211b(i32*) #1

declare dso_local i32 @zd_calc_tx_length_us(i64*, i32, i32) #1

declare dso_local i32 @ZD_RATE(i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
