; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_prep_station.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_prep_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64, i32, %struct.il_station_entry*, %struct.TYPE_4__ }
%struct.il_station_entry = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.ieee80211_sta = type { i32 }

@IL_INVALID_STATION = common dso_local global i64 0, align 8
@IL_AP_ID = common dso_local global i64 0, align 8
@IL_STA_ID = common dso_local global i32 0, align 4
@IL_STA_UCODE_INPROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"STA %d already in process of being added.\0A\00", align 1
@IL_STA_DRIVER_ACTIVE = common dso_local global i32 0, align 4
@IL_STA_UCODE_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"STA %d (%pM) already added, not adding again.\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Add STA to driver ID %d: %pM\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@RATE_6M_PLCP = common dso_local global i32 0, align 4
@RATE_1M_PLCP = common dso_local global i32 0, align 4
@RATE_MCS_ANT_AB_MSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @il_prep_station(%struct.il_priv* %0, i64* %1, i32 %2, %struct.ieee80211_sta* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.il_priv*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.il_station_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %9, align 8
  %14 = load i64, i64* @IL_INVALID_STATION, align 8
  store i64 %14, i64* %12, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i64, i64* @IL_AP_ID, align 8
  store i64 %18, i64* %12, align 8
  br label %77

19:                                               ; preds = %4
  %20 = load i64*, i64** %7, align 8
  %21 = call i64 @is_broadcast_ether_addr(i64* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %25 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  br label %76

28:                                               ; preds = %19
  %29 = load i32, i32* @IL_STA_ID, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %72, %28
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %33 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %75

37:                                               ; preds = %30
  %38 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %39 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %38, i32 0, i32 2
  %40 = load %struct.il_station_entry*, %struct.il_station_entry** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.il_station_entry, %struct.il_station_entry* %40, i64 %42
  %44 = getelementptr inbounds %struct.il_station_entry, %struct.il_station_entry* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i64*, i64** %7, align 8
  %49 = call i64 @ether_addr_equal(i32 %47, i64* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %12, align 8
  br label %75

54:                                               ; preds = %37
  %55 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %56 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %55, i32 0, i32 2
  %57 = load %struct.il_station_entry*, %struct.il_station_entry** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.il_station_entry, %struct.il_station_entry* %57, i64 %59
  %61 = getelementptr inbounds %struct.il_station_entry, %struct.il_station_entry* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %54
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* @IL_INVALID_STATION, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %12, align 8
  br label %71

71:                                               ; preds = %68, %64, %54
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %30

75:                                               ; preds = %51, %30
  br label %76

76:                                               ; preds = %75, %23
  br label %77

77:                                               ; preds = %76, %17
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* @IL_INVALID_STATION, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i64, i64* %12, align 8
  store i64 %85, i64* %5, align 8
  br label %202

86:                                               ; preds = %77
  %87 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %88 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %87, i32 0, i32 2
  %89 = load %struct.il_station_entry*, %struct.il_station_entry** %88, align 8
  %90 = load i64, i64* %12, align 8
  %91 = getelementptr inbounds %struct.il_station_entry, %struct.il_station_entry* %89, i64 %90
  %92 = getelementptr inbounds %struct.il_station_entry, %struct.il_station_entry* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IL_STA_UCODE_INPROGRESS, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %86
  %98 = load i64, i64* %12, align 8
  %99 = call i32 @D_INFO(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %98)
  %100 = load i64, i64* %12, align 8
  store i64 %100, i64* %5, align 8
  br label %202

101:                                              ; preds = %86
  %102 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %103 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %102, i32 0, i32 2
  %104 = load %struct.il_station_entry*, %struct.il_station_entry** %103, align 8
  %105 = load i64, i64* %12, align 8
  %106 = getelementptr inbounds %struct.il_station_entry, %struct.il_station_entry* %104, i64 %105
  %107 = getelementptr inbounds %struct.il_station_entry, %struct.il_station_entry* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @IL_STA_DRIVER_ACTIVE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %141

112:                                              ; preds = %101
  %113 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %114 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %113, i32 0, i32 2
  %115 = load %struct.il_station_entry*, %struct.il_station_entry** %114, align 8
  %116 = load i64, i64* %12, align 8
  %117 = getelementptr inbounds %struct.il_station_entry, %struct.il_station_entry* %115, i64 %116
  %118 = getelementptr inbounds %struct.il_station_entry, %struct.il_station_entry* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @IL_STA_UCODE_ACTIVE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %112
  %124 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %125 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %124, i32 0, i32 2
  %126 = load %struct.il_station_entry*, %struct.il_station_entry** %125, align 8
  %127 = load i64, i64* %12, align 8
  %128 = getelementptr inbounds %struct.il_station_entry, %struct.il_station_entry* %126, i64 %127
  %129 = getelementptr inbounds %struct.il_station_entry, %struct.il_station_entry* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i64*, i64** %7, align 8
  %134 = call i64 @ether_addr_equal(i32 %132, i64* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %123
  %137 = load i64, i64* %12, align 8
  %138 = load i64*, i64** %7, align 8
  %139 = call i32 @D_ASSOC(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %137, i64* %138)
  %140 = load i64, i64* %12, align 8
  store i64 %140, i64* %5, align 8
  br label %202

141:                                              ; preds = %123, %112, %101
  %142 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %143 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %142, i32 0, i32 2
  %144 = load %struct.il_station_entry*, %struct.il_station_entry** %143, align 8
  %145 = load i64, i64* %12, align 8
  %146 = getelementptr inbounds %struct.il_station_entry, %struct.il_station_entry* %144, i64 %145
  store %struct.il_station_entry* %146, %struct.il_station_entry** %10, align 8
  %147 = load i32, i32* @IL_STA_DRIVER_ACTIVE, align 4
  %148 = load %struct.il_station_entry*, %struct.il_station_entry** %10, align 8
  %149 = getelementptr inbounds %struct.il_station_entry, %struct.il_station_entry* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load i64, i64* %12, align 8
  %151 = load i64*, i64** %7, align 8
  %152 = call i32 @D_ASSOC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %150, i64* %151)
  %153 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %154 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 8
  %157 = load %struct.il_station_entry*, %struct.il_station_entry** %10, align 8
  %158 = getelementptr inbounds %struct.il_station_entry, %struct.il_station_entry* %157, i32 0, i32 1
  %159 = call i32 @memset(%struct.TYPE_6__* %158, i32 0, i32 4)
  %160 = load %struct.il_station_entry*, %struct.il_station_entry** %10, align 8
  %161 = getelementptr inbounds %struct.il_station_entry, %struct.il_station_entry* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i64*, i64** %7, align 8
  %166 = load i32, i32* @ETH_ALEN, align 4
  %167 = call i32 @memcpy(i32 %164, i64* %165, i32 %166)
  %168 = load %struct.il_station_entry*, %struct.il_station_entry** %10, align 8
  %169 = getelementptr inbounds %struct.il_station_entry, %struct.il_station_entry* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 3
  store i64 0, i64* %170, align 8
  %171 = load i64, i64* %12, align 8
  %172 = load %struct.il_station_entry*, %struct.il_station_entry** %10, align 8
  %173 = getelementptr inbounds %struct.il_station_entry, %struct.il_station_entry* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  store i64 %171, i64* %175, align 8
  %176 = load %struct.il_station_entry*, %struct.il_station_entry** %10, align 8
  %177 = getelementptr inbounds %struct.il_station_entry, %struct.il_station_entry* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  store i64 0, i64* %178, align 8
  %179 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %180 = load i64, i64* %12, align 8
  %181 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %182 = call i32 @il_set_ht_add_station(%struct.il_priv* %179, i64 %180, %struct.ieee80211_sta* %181)
  %183 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %184 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %141
  %189 = load i32, i32* @RATE_6M_PLCP, align 4
  br label %192

190:                                              ; preds = %141
  %191 = load i32, i32* @RATE_1M_PLCP, align 4
  br label %192

192:                                              ; preds = %190, %188
  %193 = phi i32 [ %189, %188 ], [ %191, %190 ]
  store i32 %193, i32* %13, align 4
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* @RATE_MCS_ANT_AB_MSK, align 4
  %196 = or i32 %194, %195
  %197 = call i32 @cpu_to_le16(i32 %196)
  %198 = load %struct.il_station_entry*, %struct.il_station_entry** %10, align 8
  %199 = getelementptr inbounds %struct.il_station_entry, %struct.il_station_entry* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  store i32 %197, i32* %200, align 8
  %201 = load i64, i64* %12, align 8
  store i64 %201, i64* %5, align 8
  br label %202

202:                                              ; preds = %192, %136, %97, %84
  %203 = load i64, i64* %5, align 8
  ret i64 %203
}

declare dso_local i64 @is_broadcast_ether_addr(i64*) #1

declare dso_local i64 @ether_addr_equal(i32, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @D_INFO(i8*, i64) #1

declare dso_local i32 @D_ASSOC(i8*, i64, i64*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @il_set_ht_add_station(%struct.il_priv*, i64, %struct.ieee80211_sta*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
