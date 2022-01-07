; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_parse_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_parse_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.ar9170 = type { i32, %struct.TYPE_13__, %struct.TYPE_15__*, i32, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i64, i32, i32, i32*, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__** }
%struct.TYPE_9__ = type { %struct.ath_regulatory }
%struct.ath_regulatory = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_RX_DIFF = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_MAX_STREAMS = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT = common dso_local global i32 0, align 4
@carl9170_band_2GHz = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@carl9170_band_5GHz = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@AR9170_OPFLAG_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@AR9170_OPFLAG_5GHZ = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*)* @carl9170_parse_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_parse_eeprom(%struct.ar9170* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca %struct.ath_regulatory*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %3, align 8
  %10 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %11 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store %struct.ath_regulatory* %12, %struct.ath_regulatory** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %14 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @cpu_to_le16(i32 65535)
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODATA, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %165

22:                                               ; preds = %1
  %23 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %24 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @hweight8(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %29 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @hweight8(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %22
  %37 = load i32, i32* @IEEE80211_HT_MCS_TX_RX_DIFF, align 4
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp uge i32 %38, 1
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @IEEE80211_HT_MCS_TX_MAX_STREAMS, align 4
  %43 = icmp ule i32 %41, %42
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i1 [ false, %36 ], [ %43, %40 ]
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @WARN_ON(i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = sub i32 %49, 1
  %51 = load i32, i32* @IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT, align 4
  %52 = shl i32 %50, %51
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @carl9170_band_2GHz, i32 0, i32 1, i32 0, i32 0), align 8
  %55 = or i32 %54, %53
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @carl9170_band_2GHz, i32 0, i32 1, i32 0, i32 0), align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @carl9170_band_5GHz, i32 0, i32 1, i32 0, i32 0), align 8
  %58 = or i32 %57, %56
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @carl9170_band_5GHz, i32 0, i32 1, i32 0, i32 0), align 8
  br label %59

59:                                               ; preds = %44, %22
  %60 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %61 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @AR9170_OPFLAG_2GHZ, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %59
  %68 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %69 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %68, i32 0, i32 2
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %73, align 8
  %75 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %74, i64 %75
  store %struct.TYPE_14__* @carl9170_band_2GHz, %struct.TYPE_14__** %76, align 8
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @carl9170_band_2GHz, i32 0, i32 0), align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %67, %59
  %85 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %86 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @AR9170_OPFLAG_5GHZ, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %84
  %93 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %94 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %93, i32 0, i32 2
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %98, align 8
  %100 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %99, i64 %100
  store %struct.TYPE_14__* @carl9170_band_5GHz, %struct.TYPE_14__** %101, align 8
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @carl9170_band_5GHz, i32 0, i32 0), align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %92, %84
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %165

115:                                              ; preds = %109
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 4, %117
  %119 = trunc i64 %118 to i32
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call i32 @kzalloc(i32 %119, i32 %120)
  %122 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %123 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 8
  %124 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %125 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %115
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %165

131:                                              ; preds = %115
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %134 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* %8, align 4
  %136 = icmp eq i32 %135, 2
  br i1 %136, label %137, label %142

137:                                              ; preds = %131
  %138 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %139 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %138, i32 0, i32 2
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  store i32 135000, i32* %141, align 8
  br label %147

142:                                              ; preds = %131
  %143 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %144 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %143, i32 0, i32 2
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  store i32 80000, i32* %146, align 8
  br label %147

147:                                              ; preds = %142, %137
  %148 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %149 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @le16_to_cpu(i32 %153)
  %155 = load %struct.ath_regulatory*, %struct.ath_regulatory** %4, align 8
  %156 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 4
  %157 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %158 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %157, i32 0, i32 2
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %161 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.TYPE_15__* %159, i32 %163)
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %147, %128, %112, %19
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @hweight8(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
