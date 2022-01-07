; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_add_station_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_add_station_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }
%struct.ieee80211_sta = type { i32 }
%struct.il_addsta_cmd = type { i32 }

@IL_INVALID_STATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Unable to prepare station %pM for addition\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IL_STA_UCODE_INPROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"STA %d already in process of being added.\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@IL_STA_DRIVER_ACTIVE = common dso_local global i32 0, align 4
@IL_STA_UCODE_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"STA %d (%pM) already added, not adding again.\0A\00", align 1
@CMD_SYNC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Adding station %pM failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_add_station_common(%struct.il_priv* %0, i64* %1, i32 %2, %struct.ieee80211_sta* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.il_priv*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.il_addsta_cmd, align 4
  store %struct.il_priv* %0, %struct.il_priv** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %13, align 4
  %16 = load i64*, i64** %11, align 8
  store i64 0, i64* %16, align 8
  %17 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %18 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %12, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %25 = call i64 @il_prep_station(%struct.il_priv* %21, i64* %22, i32 %23, %struct.ieee80211_sta* %24)
  store i64 %25, i64* %14, align 8
  %26 = load i64, i64* %14, align 8
  %27 = load i64, i64* @IL_INVALID_STATION, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %5
  %30 = load i64*, i64** %8, align 8
  %31 = call i32 @IL_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64* %30)
  %32 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %33 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %32, i32 0, i32 0
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %159

38:                                               ; preds = %5
  %39 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %40 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i64, i64* %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IL_STA_UCODE_INPROGRESS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %38
  %50 = load i64, i64* %14, align 8
  %51 = call i32 @D_INFO(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %53 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %52, i32 0, i32 0
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i32, i32* @EEXIST, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %159

58:                                               ; preds = %38
  %59 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %60 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i64, i64* %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @IL_STA_DRIVER_ACTIVE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %58
  %70 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %71 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load i64, i64* %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @IL_STA_UCODE_ACTIVE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %69
  %81 = load i64, i64* %14, align 8
  %82 = load i64*, i64** %8, align 8
  %83 = call i32 @D_ASSOC(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %81, i64* %82)
  %84 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %85 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %84, i32 0, i32 0
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  %88 = load i32, i32* @EEXIST, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %6, align 4
  br label %159

90:                                               ; preds = %69, %58
  %91 = load i32, i32* @IL_STA_UCODE_INPROGRESS, align 4
  %92 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %93 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %92, i32 0, i32 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = load i64, i64* %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %91
  store i32 %99, i32* %97, align 8
  %100 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %101 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %100, i32 0, i32 1
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load i64, i64* %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = call i32 @memcpy(%struct.il_addsta_cmd* %15, %struct.TYPE_6__* %105, i32 4)
  %107 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %108 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %107, i32 0, i32 0
  %109 = load i64, i64* %12, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  %111 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %112 = load i32, i32* @CMD_SYNC, align 4
  %113 = call i32 @il_send_add_sta(%struct.il_priv* %111, %struct.il_addsta_cmd* %15, i32 %112)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %155

116:                                              ; preds = %90
  %117 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %118 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %117, i32 0, i32 0
  %119 = load i64, i64* %12, align 8
  %120 = call i32 @spin_lock_irqsave(i32* %118, i64 %119)
  %121 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %122 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %121, i32 0, i32 1
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = load i64, i64* %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = call i32 @IL_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64* %129)
  %131 = load i32, i32* @IL_STA_DRIVER_ACTIVE, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %134 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %133, i32 0, i32 1
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = load i64, i64* %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, %132
  store i32 %140, i32* %138, align 8
  %141 = load i32, i32* @IL_STA_UCODE_INPROGRESS, align 4
  %142 = xor i32 %141, -1
  %143 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %144 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %143, i32 0, i32 1
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = load i64, i64* %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = and i32 %149, %142
  store i32 %150, i32* %148, align 8
  %151 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %152 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %151, i32 0, i32 0
  %153 = load i64, i64* %12, align 8
  %154 = call i32 @spin_unlock_irqrestore(i32* %152, i64 %153)
  br label %155

155:                                              ; preds = %116, %90
  %156 = load i64, i64* %14, align 8
  %157 = load i64*, i64** %11, align 8
  store i64 %156, i64* %157, align 8
  %158 = load i32, i32* %13, align 4
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %155, %80, %49, %29
  %160 = load i32, i32* %6, align 4
  ret i32 %160
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @il_prep_station(%struct.il_priv*, i64*, i32, %struct.ieee80211_sta*) #1

declare dso_local i32 @IL_ERR(i8*, i64*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @D_INFO(i8*, i64) #1

declare dso_local i32 @D_ASSOC(i8*, i64, i64*) #1

declare dso_local i32 @memcpy(%struct.il_addsta_cmd*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @il_send_add_sta(%struct.il_priv*, %struct.il_addsta_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
