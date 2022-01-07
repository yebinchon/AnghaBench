; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_mac.c_zd_restore_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_mac.c_zd_restore_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_mac = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32*, i32, %struct.zd_mc_hash }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.zd_mc_hash = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"set_mac_and_bssid failed, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"zd_chip_set_channel failed, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"zd_chip_set_multicast_hash failed, %d\0A\00", align 1
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_restore_settings(%struct.zd_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zd_mac*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.zd_mc_hash, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.zd_mac* %0, %struct.zd_mac** %3, align 8
  %11 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %12 = call i32 @zd_mac_dev(%struct.zd_mac* %11)
  %13 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %15 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %14, i32 0, i32 1
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %18 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %17, i32 0, i32 8
  %19 = bitcast %struct.zd_mc_hash* %5 to i8*
  %20 = bitcast %struct.zd_mc_hash* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %22 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  %24 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %25 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %29 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %33 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %10, align 4
  %35 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %36 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock_irq(i32* %36)
  %38 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %39 = call i32 @set_mac_and_bssid(%struct.zd_mac* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %1
  %43 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %44 = call i32 @zd_mac_dev(%struct.zd_mac* %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %136

48:                                               ; preds = %1
  %49 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %50 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %49, i32 0, i32 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @zd_chip_set_channel(i32* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %57 = call i32 @zd_mac_dev(%struct.zd_mac* %56)
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %136

61:                                               ; preds = %48
  %62 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @set_rts_cts(%struct.zd_mac* %62, i32 %63)
  %65 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %66 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %65, i32 0, i32 4
  %67 = call i32 @zd_chip_set_multicast_hash(i32* %66, %struct.zd_mc_hash* %5)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %61
  %71 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %72 = call i32 @zd_mac_dev(%struct.zd_mac* %71)
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %136

76:                                               ; preds = %61
  %77 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %78 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %94, label %82

82:                                               ; preds = %76
  %83 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %84 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %90 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %135

94:                                               ; preds = %88, %82, %76
  %95 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %96 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %95, i32 0, i32 6
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %116

99:                                               ; preds = %94
  %100 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %101 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %104 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %103, i32 0, i32 6
  %105 = load i32*, i32** %104, align 8
  %106 = call %struct.sk_buff* @ieee80211_beacon_get(i32 %102, i32* %105)
  store %struct.sk_buff* %106, %struct.sk_buff** %4, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = icmp ne %struct.sk_buff* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %99
  %110 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %111 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = call i32 @zd_mac_config_beacon(i32 %112, %struct.sk_buff* %113, i32 0)
  br label %115

115:                                              ; preds = %109, %99
  br label %116

116:                                              ; preds = %115, %94
  %117 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %118 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %117, i32 0, i32 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %122 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @zd_set_beacon_interval(i32* %118, i32 %119, i32 %120, i32 %123)
  %125 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %126 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %125, i32 0, i32 1
  %127 = call i32 @spin_lock_irq(i32* %126)
  %128 = load i32, i32* @jiffies, align 4
  %129 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %130 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  store i32 %128, i32* %131, align 8
  %132 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %133 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %132, i32 0, i32 1
  %134 = call i32 @spin_unlock_irq(i32* %133)
  br label %135

135:                                              ; preds = %116, %88
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %70, %55, %42
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @dev_dbg_f(i32, i8*, ...) #1

declare dso_local i32 @zd_mac_dev(%struct.zd_mac*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @set_mac_and_bssid(%struct.zd_mac*) #1

declare dso_local i32 @zd_chip_set_channel(i32*, i32) #1

declare dso_local i32 @set_rts_cts(%struct.zd_mac*, i32) #1

declare dso_local i32 @zd_chip_set_multicast_hash(i32*, %struct.zd_mc_hash*) #1

declare dso_local %struct.sk_buff* @ieee80211_beacon_get(i32, i32*) #1

declare dso_local i32 @zd_mac_config_beacon(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @zd_set_beacon_interval(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
