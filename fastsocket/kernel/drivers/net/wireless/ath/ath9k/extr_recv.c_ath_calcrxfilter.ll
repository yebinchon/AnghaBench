; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_calcrxfilter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_calcrxfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.TYPE_10__*, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@ATH9K_RX_FILTER_UCAST = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_BCAST = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_MCAST = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_PHYRADAR = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_PHYERR = common dso_local global i32 0, align 4
@FIF_PROBE_REQ = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_PROBEREQ = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_PROM = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_CONTROL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@FIF_BCN_PRBRESP_PROMISC = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_MYBEACON = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_BEACON = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@FIF_PSPOLL = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_PSPOLL = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_COMP_BAR = common dso_local global i32 0, align 4
@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@AR_SREV_VERSION_9160 = common dso_local global i64 0, align 8
@ATH9K_RX_FILTER_MCAST_BCAST_ALL = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_4ADDRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_calcrxfilter(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %4 = load i32, i32* @ATH9K_RX_FILTER_UCAST, align 4
  %5 = load i32, i32* @ATH9K_RX_FILTER_BCAST, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @ATH9K_RX_FILTER_MCAST, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 3
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i32, i32* @ATH9K_RX_FILTER_PHYRADAR, align 4
  %18 = load i32, i32* @ATH9K_RX_FILTER_PHYERR, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FIF_PROBE_REQ, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32, i32* @ATH9K_RX_FILTER_PROBEREQ, align 4
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %22
  %35 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %35, i32 0, i32 1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* @ATH9K_RX_FILTER_PROM, align 4
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %47 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @FIF_CONTROL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i32, i32* @ATH9K_RX_FILTER_CONTROL, align 4
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %45
  %58 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %59 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %58, i32 0, i32 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %57
  %66 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %67 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sle i32 %68, 1
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %72 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* @ATH9K_RX_FILTER_MYBEACON, align 4
  %80 = load i32, i32* %3, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %3, align 4
  br label %86

82:                                               ; preds = %70, %65, %57
  %83 = load i32, i32* @ATH9K_RX_FILTER_BEACON, align 4
  %84 = load i32, i32* %3, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %78
  %87 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %88 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %87, i32 0, i32 1
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %102, label %94

94:                                               ; preds = %86
  %95 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %96 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @FIF_PSPOLL, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %94, %86
  %103 = load i32, i32* @ATH9K_RX_FILTER_PSPOLL, align 4
  %104 = load i32, i32* %3, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %94
  %107 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %108 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %107, i32 0, i32 3
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = call i64 @conf_is_ht(%struct.TYPE_9__* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i32, i32* @ATH9K_RX_FILTER_COMP_BAR, align 4
  %115 = load i32, i32* %3, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %113, %106
  %118 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %119 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp sgt i32 %120, 1
  br i1 %121, label %130, label %122

122:                                              ; preds = %117
  %123 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %124 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @FIF_OTHER_BSS, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %147

130:                                              ; preds = %122, %117
  %131 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %132 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %131, i32 0, i32 1
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @AR_SREV_VERSION_9160, align 8
  %138 = icmp sle i64 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %130
  %140 = load i32, i32* @ATH9K_RX_FILTER_PROM, align 4
  %141 = load i32, i32* %3, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %139, %130
  %144 = load i32, i32* @ATH9K_RX_FILTER_MCAST_BCAST_ALL, align 4
  %145 = load i32, i32* %3, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %143, %122
  %148 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %149 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %148, i32 0, i32 1
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = call i64 @AR_SREV_9550(%struct.TYPE_10__* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load i32, i32* @ATH9K_RX_FILTER_4ADDRESS, align 4
  %155 = load i32, i32* %3, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %153, %147
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i64 @conf_is_ht(%struct.TYPE_9__*) #1

declare dso_local i64 @AR_SREV_9550(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
