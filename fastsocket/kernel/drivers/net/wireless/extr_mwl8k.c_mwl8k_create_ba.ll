; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_create_ba.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_create_ba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.mwl8k_ampdu_stream = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.mwl8k_cmd_bastream = type { %struct.TYPE_8__, %struct.TYPE_6__, i8* }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i32, i32, i8*, i8*, i32, i32, i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_BASTREAM = common dso_local global i32 0, align 4
@MWL8K_BA_CREATE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_HT_AMPDU_PARM_FACTOR = common dso_local global i32 0, align 4
@IEEE80211_HT_AMPDU_PARM_DENSITY = common dso_local global i32 0, align 4
@BASTREAM_FLAG_IMMEDIATE_TYPE = common dso_local global i32 0, align 4
@BASTREAM_FLAG_DIRECTION_UPSTREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Created a BA stream for %pM : tid %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.mwl8k_ampdu_stream*, i64, %struct.ieee80211_vif*)* @mwl8k_create_ba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_create_ba(%struct.ieee80211_hw* %0, %struct.mwl8k_ampdu_stream* %1, i64 %2, %struct.ieee80211_vif* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.mwl8k_ampdu_stream*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.mwl8k_cmd_bastream*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.mwl8k_ampdu_stream* %1, %struct.mwl8k_ampdu_stream** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ieee80211_vif* %3, %struct.ieee80211_vif** %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mwl8k_cmd_bastream* @kzalloc(i32 80, i32 %12)
  store %struct.mwl8k_cmd_bastream* %13, %struct.mwl8k_cmd_bastream** %10, align 8
  %14 = load %struct.mwl8k_cmd_bastream*, %struct.mwl8k_cmd_bastream** %10, align 8
  %15 = icmp eq %struct.mwl8k_cmd_bastream* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %123

19:                                               ; preds = %4
  %20 = load i32, i32* @MWL8K_CMD_BASTREAM, align 4
  %21 = call i8* @cpu_to_le16(i32 %20)
  %22 = load %struct.mwl8k_cmd_bastream*, %struct.mwl8k_cmd_bastream** %10, align 8
  %23 = getelementptr inbounds %struct.mwl8k_cmd_bastream, %struct.mwl8k_cmd_bastream* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  store i8* %21, i8** %24, align 8
  %25 = call i8* @cpu_to_le16(i32 80)
  %26 = load %struct.mwl8k_cmd_bastream*, %struct.mwl8k_cmd_bastream** %10, align 8
  %27 = getelementptr inbounds %struct.mwl8k_cmd_bastream, %struct.mwl8k_cmd_bastream* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  %29 = load i32, i32* @MWL8K_BA_CREATE, align 4
  %30 = call i8* @cpu_to_le32(i32 %29)
  %31 = load %struct.mwl8k_cmd_bastream*, %struct.mwl8k_cmd_bastream** %10, align 8
  %32 = getelementptr inbounds %struct.mwl8k_cmd_bastream, %struct.mwl8k_cmd_bastream* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load i64, i64* %8, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = load %struct.mwl8k_cmd_bastream*, %struct.mwl8k_cmd_bastream** %10, align 8
  %37 = getelementptr inbounds %struct.mwl8k_cmd_bastream, %struct.mwl8k_cmd_bastream* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 8
  store i8* %35, i8** %38, align 8
  %39 = load i64, i64* %8, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i8* @cpu_to_le32(i32 %40)
  %42 = load %struct.mwl8k_cmd_bastream*, %struct.mwl8k_cmd_bastream** %10, align 8
  %43 = getelementptr inbounds %struct.mwl8k_cmd_bastream, %struct.mwl8k_cmd_bastream* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 7
  store i8* %41, i8** %44, align 8
  %45 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %7, align 8
  %46 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.mwl8k_cmd_bastream*, %struct.mwl8k_cmd_bastream** %10, align 8
  %49 = getelementptr inbounds %struct.mwl8k_cmd_bastream, %struct.mwl8k_cmd_bastream* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 6
  store i32 %47, i32* %50, align 8
  %51 = load %struct.mwl8k_cmd_bastream*, %struct.mwl8k_cmd_bastream** %10, align 8
  %52 = getelementptr inbounds %struct.mwl8k_cmd_bastream, %struct.mwl8k_cmd_bastream* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %7, align 8
  %56 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ETH_ALEN, align 4
  %61 = call i32 @memcpy(i32 %54, i32 %59, i32 %60)
  %62 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %7, align 8
  %63 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.mwl8k_cmd_bastream*, %struct.mwl8k_cmd_bastream** %10, align 8
  %66 = getelementptr inbounds %struct.mwl8k_cmd_bastream, %struct.mwl8k_cmd_bastream* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  store i32 %64, i32* %67, align 8
  %68 = call i8* @cpu_to_le16(i32 0)
  %69 = load %struct.mwl8k_cmd_bastream*, %struct.mwl8k_cmd_bastream** %10, align 8
  %70 = getelementptr inbounds %struct.mwl8k_cmd_bastream, %struct.mwl8k_cmd_bastream* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  store i8* %68, i8** %71, align 8
  %72 = load %struct.mwl8k_cmd_bastream*, %struct.mwl8k_cmd_bastream** %10, align 8
  %73 = getelementptr inbounds %struct.mwl8k_cmd_bastream, %struct.mwl8k_cmd_bastream* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %7, align 8
  %76 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %75, i32 0, i32 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IEEE80211_HT_AMPDU_PARM_FACTOR, align 4
  %82 = and i32 %80, %81
  %83 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %7, align 8
  %84 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %83, i32 0, i32 1
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 2
  %90 = load i32, i32* @IEEE80211_HT_AMPDU_PARM_DENSITY, align 4
  %91 = and i32 %89, %90
  %92 = or i32 %82, %91
  %93 = load %struct.mwl8k_cmd_bastream*, %struct.mwl8k_cmd_bastream** %10, align 8
  %94 = getelementptr inbounds %struct.mwl8k_cmd_bastream, %struct.mwl8k_cmd_bastream* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* @BASTREAM_FLAG_IMMEDIATE_TYPE, align 4
  %97 = load i32, i32* @BASTREAM_FLAG_DIRECTION_UPSTREAM, align 4
  %98 = or i32 %96, %97
  %99 = call i8* @cpu_to_le32(i32 %98)
  %100 = load %struct.mwl8k_cmd_bastream*, %struct.mwl8k_cmd_bastream** %10, align 8
  %101 = getelementptr inbounds %struct.mwl8k_cmd_bastream, %struct.mwl8k_cmd_bastream* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  store i8* %99, i8** %102, align 8
  %103 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %104 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %105 = load %struct.mwl8k_cmd_bastream*, %struct.mwl8k_cmd_bastream** %10, align 8
  %106 = getelementptr inbounds %struct.mwl8k_cmd_bastream, %struct.mwl8k_cmd_bastream* %105, i32 0, i32 0
  %107 = call i32 @mwl8k_post_pervif_cmd(%struct.ieee80211_hw* %103, %struct.ieee80211_vif* %104, %struct.TYPE_8__* %106)
  store i32 %107, i32* %11, align 4
  %108 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %109 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %7, align 8
  %112 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %111, i32 0, i32 1
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %7, align 8
  %117 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @wiphy_debug(i32 %110, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %118)
  %120 = load %struct.mwl8k_cmd_bastream*, %struct.mwl8k_cmd_bastream** %10, align 8
  %121 = call i32 @kfree(%struct.mwl8k_cmd_bastream* %120)
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %19, %16
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local %struct.mwl8k_cmd_bastream* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mwl8k_post_pervif_cmd(%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.TYPE_8__*) #1

declare dso_local i32 @wiphy_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_bastream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
