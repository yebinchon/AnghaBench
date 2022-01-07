; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_main.c_p54_init_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_main.c_p54_init_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.p54_common* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.p54_common = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32, i32, i32, i32, i32, %struct.ieee80211_hw* }
%struct.TYPE_3__ = type { i32 }

@p54_ops = common dso_local global i32 0, align 4
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@IEEE80211_HW_RX_INCLUDES_FCS = common dso_local global i32 0, align 4
@IEEE80211_HW_SIGNAL_DBM = common dso_local global i32 0, align 4
@IEEE80211_HW_SUPPORTS_PS = common dso_local global i32 0, align 4
@IEEE80211_HW_PS_NULLFUNC_STACK = common dso_local global i32 0, align 4
@IEEE80211_HW_MFP_CAPABLE = common dso_local global i32 0, align 4
@IEEE80211_HW_REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@P54_QUEUE_BEACON = common dso_local global i64 0, align 8
@P54_QUEUE_FWSCAN = common dso_local global i64 0, align 8
@P54_QUEUE_MGMT = common dso_local global i64 0, align 8
@P54_QUEUE_CAB = common dso_local global i64 0, align 8
@P54_QUEUE_DATA = common dso_local global i64 0, align 8
@WIPHY_FLAG_PS_ON_BY_DEFAULT = common dso_local global i32 0, align 4
@p54_work = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_hw* @p54_init_common(i64 %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.p54_common*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i64 %6, i32* @p54_ops)
  store %struct.ieee80211_hw* %7, %struct.ieee80211_hw** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = icmp ne %struct.ieee80211_hw* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.ieee80211_hw* null, %struct.ieee80211_hw** %2, align 8
  br label %143

11:                                               ; preds = %1
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 7
  %14 = load %struct.p54_common*, %struct.p54_common** %13, align 8
  store %struct.p54_common* %14, %struct.p54_common** %5, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %17 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %16, i32 0, i32 16
  store %struct.ieee80211_hw* %15, %struct.ieee80211_hw** %17, align 8
  %18 = load i32, i32* @NL80211_IFTYPE_UNSPECIFIED, align 4
  %19 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %20 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %19, i32 0, i32 15
  store i32 %18, i32* %20, align 8
  %21 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %22 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %21, i32 0, i32 0
  store i32 351, i32* %22, align 8
  %23 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %24 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %23, i32 0, i32 14
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %27 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %26, i32 0, i32 13
  %28 = call i32 @skb_queue_head_init(i32* %27)
  %29 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %30 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %29, i32 0, i32 12
  %31 = call i32 @skb_queue_head_init(i32* %30)
  %32 = load i32, i32* @IEEE80211_HW_RX_INCLUDES_FCS, align 4
  %33 = load i32, i32* @IEEE80211_HW_SIGNAL_DBM, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @IEEE80211_HW_SUPPORTS_PS, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @IEEE80211_HW_PS_NULLFUNC_STACK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @IEEE80211_HW_MFP_CAPABLE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @IEEE80211_HW_REPORTS_TX_ACK_STATUS, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %44 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %46 = call i32 @BIT(i32 %45)
  %47 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %48 = call i32 @BIT(i32 %47)
  %49 = or i32 %46, %48
  %50 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %51 = call i32 @BIT(i32 %50)
  %52 = or i32 %49, %51
  %53 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %54 = call i32 @BIT(i32 %53)
  %55 = or i32 %52, %54
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %57 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %56, i32 0, i32 6
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %61 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %60, i32 0, i32 1
  store i32 1000, i32* %61, align 4
  %62 = call i32 @cpu_to_le32(i32 0)
  %63 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %64 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %63, i32 0, i32 11
  store i32 %62, i32* %64, align 8
  %65 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %66 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %65, i32 0, i32 10
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i64, i64* @P54_QUEUE_BEACON, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  %71 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %72 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %71, i32 0, i32 10
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i64, i64* @P54_QUEUE_FWSCAN, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 4
  %77 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %78 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %77, i32 0, i32 10
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i64, i64* @P54_QUEUE_MGMT, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i32 3, i32* %82, align 4
  %83 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %84 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %83, i32 0, i32 10
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i64, i64* @P54_QUEUE_CAB, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i32 3, i32* %88, align 4
  %89 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %90 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %89, i32 0, i32 10
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load i64, i64* @P54_QUEUE_DATA, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i32 5, i32* %94, align 4
  %95 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %96 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %95, i32 0, i32 2
  store i32 1, i32* %96, align 8
  %97 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %98 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %97, i32 0, i32 1
  store i32 -94, i32* %98, align 4
  %99 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %100 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %99, i32 0, i32 3
  store i32 4, i32* %100, align 4
  %101 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %102 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %101, i32 0, i32 4
  store i32 7, i32* %102, align 8
  %103 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %104 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %103, i32 0, i32 5
  store i32 12, i32* %104, align 4
  %105 = load i32, i32* @WIPHY_FLAG_PS_ON_BY_DEFAULT, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %108 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %107, i32 0, i32 6
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %106
  store i32 %112, i32* %110, align 4
  %113 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %114 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %113, i32 0, i32 9
  %115 = call i32 @mutex_init(i32* %114)
  %116 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %117 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %116, i32 0, i32 8
  %118 = call i32 @mutex_init(i32* %117)
  %119 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %120 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %119, i32 0, i32 7
  %121 = call i32 @init_completion(i32* %120)
  %122 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %123 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %122, i32 0, i32 6
  %124 = call i32 @init_completion(i32* %123)
  %125 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %126 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %125, i32 0, i32 5
  %127 = call i32 @init_completion(i32* %126)
  %128 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %129 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %128, i32 0, i32 4
  %130 = load i32, i32* @p54_work, align 4
  %131 = call i32 @INIT_DELAYED_WORK(i32* %129, i32 %130)
  %132 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %133 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* @ETH_ALEN, align 4
  %137 = call i32 @memset(i32* %135, i32 -1, i32 %136)
  %138 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %139 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %138, i32 0, i32 2
  store i32* null, i32** %139, align 8
  %140 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %141 = call i32 @p54_reset_stats(%struct.p54_common* %140)
  %142 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_hw* %142, %struct.ieee80211_hw** %2, align 8
  br label %143

143:                                              ; preds = %11, %10
  %144 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  ret %struct.ieee80211_hw* %144
}

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i64, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @p54_reset_stats(%struct.p54_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
