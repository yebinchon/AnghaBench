; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wl3501_cs.c_wl3501_get_wireless_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wl3501_cs.c_wl3501_get_wireless_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_statistics = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.net_device = type { i32 }
%struct.wl3501_card = type { %struct.iw_statistics }

@WL3501_MIB_ATTR_WEP_ICV_ERROR_COUNT = common dso_local global i32 0, align 4
@WL3501_MIB_ATTR_WEP_UNDECRYPTABLE_COUNT = common dso_local global i32 0, align 4
@WL3501_MIB_ATTR_WEP_EXCLUDED_COUNT = common dso_local global i32 0, align 4
@WL3501_MIB_ATTR_RETRY_COUNT = common dso_local global i32 0, align 4
@WL3501_MIB_ATTR_FAILED_COUNT = common dso_local global i32 0, align 4
@WL3501_MIB_ATTR_RTS_FAILURE_COUNT = common dso_local global i32 0, align 4
@WL3501_MIB_ATTR_ACK_FAILURE_COUNT = common dso_local global i32 0, align 4
@WL3501_MIB_ATTR_FRAME_DUPLICATE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iw_statistics* (%struct.net_device*)* @wl3501_get_wireless_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iw_statistics* @wl3501_get_wireless_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.wl3501_card*, align 8
  %4 = alloca %struct.iw_statistics*, align 8
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.wl3501_card* @netdev_priv(%struct.net_device* %6)
  store %struct.wl3501_card* %7, %struct.wl3501_card** %3, align 8
  %8 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %9 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %8, i32 0, i32 0
  store %struct.iw_statistics* %9, %struct.iw_statistics** %4, align 8
  %10 = load %struct.iw_statistics*, %struct.iw_statistics** %4, align 8
  %11 = call i32 @memset(%struct.iw_statistics* %10, i32 0, i32 32)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @netif_running(%struct.net_device* %12)
  %14 = load %struct.iw_statistics*, %struct.iw_statistics** %4, align 8
  %15 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %17 = load i32, i32* @WL3501_MIB_ATTR_WEP_ICV_ERROR_COUNT, align 4
  %18 = call i32 @wl3501_get_mib_value(%struct.wl3501_card* %16, i32 %17, i64* %5, i32 8)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %1
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.iw_statistics*, %struct.iw_statistics** %4, align 8
  %23 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %21
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 8
  br label %29

29:                                               ; preds = %20, %1
  %30 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %31 = load i32, i32* @WL3501_MIB_ATTR_WEP_UNDECRYPTABLE_COUNT, align 4
  %32 = call i32 @wl3501_get_mib_value(%struct.wl3501_card* %30, i32 %31, i64* %5, i32 8)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.iw_statistics*, %struct.iw_statistics** %4, align 8
  %37 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %35
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 8
  br label %43

43:                                               ; preds = %34, %29
  %44 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %45 = load i32, i32* @WL3501_MIB_ATTR_WEP_EXCLUDED_COUNT, align 4
  %46 = call i32 @wl3501_get_mib_value(%struct.wl3501_card* %44, i32 %45, i64* %5, i32 8)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.iw_statistics*, %struct.iw_statistics** %4, align 8
  %51 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %49
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 8
  br label %57

57:                                               ; preds = %48, %43
  %58 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %59 = load i32, i32* @WL3501_MIB_ATTR_RETRY_COUNT, align 4
  %60 = call i32 @wl3501_get_mib_value(%struct.wl3501_card* %58, i32 %59, i64* %5, i32 8)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i64, i64* %5, align 8
  %64 = load %struct.iw_statistics*, %struct.iw_statistics** %4, align 8
  %65 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i64 %63, i64* %66, align 8
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %69 = load i32, i32* @WL3501_MIB_ATTR_FAILED_COUNT, align 4
  %70 = call i32 @wl3501_get_mib_value(%struct.wl3501_card* %68, i32 %69, i64* %5, i32 8)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %67
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.iw_statistics*, %struct.iw_statistics** %4, align 8
  %75 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %73
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 8
  br label %81

81:                                               ; preds = %72, %67
  %82 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %83 = load i32, i32* @WL3501_MIB_ATTR_RTS_FAILURE_COUNT, align 4
  %84 = call i32 @wl3501_get_mib_value(%struct.wl3501_card* %82, i32 %83, i64* %5, i32 8)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %81
  %87 = load i64, i64* %5, align 8
  %88 = load %struct.iw_statistics*, %struct.iw_statistics** %4, align 8
  %89 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %87
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 8
  br label %95

95:                                               ; preds = %86, %81
  %96 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %97 = load i32, i32* @WL3501_MIB_ATTR_ACK_FAILURE_COUNT, align 4
  %98 = call i32 @wl3501_get_mib_value(%struct.wl3501_card* %96, i32 %97, i64* %5, i32 8)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %95
  %101 = load i64, i64* %5, align 8
  %102 = load %struct.iw_statistics*, %struct.iw_statistics** %4, align 8
  %103 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %101
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 8
  br label %109

109:                                              ; preds = %100, %95
  %110 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %111 = load i32, i32* @WL3501_MIB_ATTR_FRAME_DUPLICATE_COUNT, align 4
  %112 = call i32 @wl3501_get_mib_value(%struct.wl3501_card* %110, i32 %111, i64* %5, i32 8)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %109
  %115 = load i64, i64* %5, align 8
  %116 = load %struct.iw_statistics*, %struct.iw_statistics** %4, align 8
  %117 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %120, %115
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %118, align 8
  br label %123

123:                                              ; preds = %114, %109
  %124 = load %struct.iw_statistics*, %struct.iw_statistics** %4, align 8
  ret %struct.iw_statistics* %124
}

declare dso_local %struct.wl3501_card* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.iw_statistics*, i32, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @wl3501_get_mib_value(%struct.wl3501_card*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
