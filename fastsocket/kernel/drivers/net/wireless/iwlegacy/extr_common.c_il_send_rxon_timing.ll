; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_send_rxon_timing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_send_rxon_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_9__, i32, %struct.TYPE_7__, i32, %struct.TYPE_6__*, %struct.ieee80211_vif* }
%struct.TYPE_9__ = type { i32, i8*, i32, i8*, i8*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ieee80211_conf }
%struct.ieee80211_conf = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }

@TIME_UNIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"beacon interval %d beacon timer %d beacon tim %d\0A\00", align 1
@C_RXON_TIMING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_send_rxon_timing(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_vif*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  store %struct.ieee80211_conf* null, %struct.ieee80211_conf** %6, align 8
  %9 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %10 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %9, i32 0, i32 5
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  store %struct.ieee80211_vif* %11, %struct.ieee80211_vif** %8, align 8
  %12 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %13 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %12, i32 0, i32 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.ieee80211_conf* %15, %struct.ieee80211_conf** %6, align 8
  %16 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %17 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %16, i32 0, i32 3
  %18 = call i32 @lockdep_assert_held(i32* %17)
  %19 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %20 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %19, i32 0, i32 0
  %21 = call i32 @memset(%struct.TYPE_9__* %20, i32 0, i32 4)
  %22 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %23 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @cpu_to_le64(i32 %24)
  %26 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %27 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 5
  store i32 %25, i32* %28, align 8
  %29 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %34 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 4
  store i8* %32, i8** %35, align 8
  %36 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %37 = icmp ne %struct.ieee80211_vif* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %1
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %40 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  br label %44

43:                                               ; preds = %1
  br label %44

44:                                               ; preds = %43, %38
  %45 = phi i32 [ %42, %38 ], [ 0, %43 ]
  store i32 %45, i32* %7, align 4
  %46 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %47 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store i8* null, i8** %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %51 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @TIME_UNIT, align 4
  %55 = mul nsw i32 %53, %54
  %56 = call i32 @il_adjust_beacon_interval(i32 %49, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i8* @cpu_to_le16(i32 %57)
  %59 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %60 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 3
  store i8* %58, i8** %61, align 8
  %62 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %63 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @TIME_UNIT, align 4
  %67 = mul nsw i32 %65, %66
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @do_div(i32 %68, i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = sub nsw i32 %71, %72
  %74 = call i32 @cpu_to_le32(i32 %73)
  %75 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %76 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 8
  %78 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %79 = icmp ne %struct.ieee80211_vif* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %44
  %81 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %82 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %88

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %86
  %89 = phi i64 [ %84, %86 ], [ 1, %87 ]
  br label %91

90:                                               ; preds = %44
  br label %91

91:                                               ; preds = %90, %88
  %92 = phi i64 [ %89, %88 ], [ 1, %90 ]
  %93 = trunc i64 %92 to i32
  %94 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %95 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %98 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 3
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @le16_to_cpu(i8* %100)
  %102 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %103 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @le32_to_cpu(i32 %105)
  %107 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %108 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @le16_to_cpu(i8* %110)
  %112 = call i32 @D_ASSOC(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %106, i32 %111)
  %113 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %114 = load i32, i32* @C_RXON_TIMING, align 4
  %115 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %116 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %115, i32 0, i32 0
  %117 = call i32 @il_send_cmd_pdu(%struct.il_priv* %113, i32 %114, i32 48, %struct.TYPE_9__* %116)
  ret i32 %117
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @il_adjust_beacon_interval(i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @D_ASSOC(i8*, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @il_send_cmd_pdu(%struct.il_priv*, i32, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
