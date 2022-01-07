; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ioctl.c_hostap_get_wireless_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ioctl.c_hostap_get_wireless_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_statistics = type { %struct.TYPE_7__, %struct.TYPE_5__, i64 }
%struct.TYPE_7__ = type { i32, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i64, i32 }
%struct.net_device = type { i32 }
%struct.hostap_interface = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i64, i64, %struct.TYPE_6__, %struct.iw_statistics }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i64, i32 }

@HOSTAP_INTERFACE_MAIN = common dso_local global i64 0, align 8
@IW_MODE_MASTER = common dso_local global i64 0, align 8
@IW_MODE_REPEAT = common dso_local global i64 0, align 8
@IW_QUAL_ALL_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_DBM = common dso_local global i32 0, align 4
@IW_QUAL_ALL_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iw_statistics* (%struct.net_device*)* @hostap_get_wireless_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iw_statistics* @hostap_get_wireless_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.iw_statistics*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hostap_interface*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.iw_statistics*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %8)
  store %struct.hostap_interface* %9, %struct.hostap_interface** %4, align 8
  %10 = load %struct.hostap_interface*, %struct.hostap_interface** %4, align 8
  %11 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %5, align 8
  %13 = load %struct.hostap_interface*, %struct.hostap_interface** %4, align 8
  %14 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HOSTAP_INTERFACE_MAIN, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store %struct.iw_statistics* null, %struct.iw_statistics** %2, align 8
  br label %122

19:                                               ; preds = %1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 5
  store %struct.iw_statistics* %21, %struct.iw_statistics** %6, align 8
  %22 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  %23 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  %29 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %34, %38
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %39, %43
  %45 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  %46 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  store i64 %44, i64* %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  %53 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  %60 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @IW_MODE_MASTER, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %106

67:                                               ; preds = %19
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @IW_MODE_REPEAT, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %106

73:                                               ; preds = %67
  store i32 1, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load %struct.net_device*, %struct.net_device** %3, align 8
  %78 = call i64 @prism2_update_comms_qual(%struct.net_device* %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load i32, i32* @IW_QUAL_ALL_UPDATED, align 4
  %82 = load i32, i32* @IW_QUAL_DBM, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  %85 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  br label %87

87:                                               ; preds = %80, %76, %73
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  %92 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  store i64 %90, i64* %93, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  %98 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  store i64 %96, i64* %99, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  %104 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  store i64 %102, i64* %105, align 8
  br label %120

106:                                              ; preds = %67, %19
  %107 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  %108 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 3
  store i64 0, i64* %109, align 8
  %110 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  %111 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  store i64 0, i64* %112, align 8
  %113 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  %114 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  store i64 0, i64* %115, align 8
  %116 = load i32, i32* @IW_QUAL_ALL_INVALID, align 4
  %117 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  %118 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  br label %120

120:                                              ; preds = %106, %87
  %121 = load %struct.iw_statistics*, %struct.iw_statistics** %6, align 8
  store %struct.iw_statistics* %121, %struct.iw_statistics** %2, align 8
  br label %122

122:                                              ; preds = %120, %18
  %123 = load %struct.iw_statistics*, %struct.iw_statistics** %2, align 8
  ret %struct.iw_statistics* %123
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @prism2_update_comms_qual(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
