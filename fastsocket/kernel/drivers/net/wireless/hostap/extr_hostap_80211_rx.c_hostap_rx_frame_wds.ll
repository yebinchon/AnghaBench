; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_80211_rx.c_hostap_rx_frame_wds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_80211_rx.c_hostap_rx_frame_wds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_9__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ieee80211_hdr = type { i32*, i32* }
%struct.net_device = type { i32 }

@IEEE80211_FCTL_TODS = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@IW_MODE_MASTER = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@DEBUG_EXTRA2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"%s: received WDS frame with not own or broadcast %s=%pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"RA\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"BSSID\00", align 1
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@HOSTAP_WDS_AP_CLIENT = common dso_local global i32 0, align 4
@DEBUG_EXTRA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"%s: received WDS[4 addr] frame from unknown TA=%pM\0A\00", align 1
@WDS_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.ieee80211_hdr*, i32, %struct.net_device**)* @hostap_rx_frame_wds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostap_rx_frame_wds(%struct.TYPE_8__* %0, %struct.ieee80211_hdr* %1, i32 %2, %struct.net_device** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device**, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.net_device** %3, %struct.net_device*** %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %12 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %16 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %17 = or i32 %15, %16
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IW_MODE_MASTER, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %19
  store i32 0, i32* %5, align 4
  br label %196

31:                                               ; preds = %25, %4
  %32 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = call i64 @memcmp(i32* %34, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %102

43:                                               ; preds = %31
  %44 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %45 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 255
  br i1 %49, label %85, label %50

50:                                               ; preds = %43
  %51 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 255
  br i1 %56, label %85, label %57

57:                                               ; preds = %50
  %58 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %59 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 255
  br i1 %63, label %85, label %64

64:                                               ; preds = %57
  %65 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %66 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 255
  br i1 %70, label %85, label %71

71:                                               ; preds = %64
  %72 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %73 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 255
  br i1 %77, label %85, label %78

78:                                               ; preds = %71
  %79 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %80 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 5
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 255
  br i1 %84, label %85, label %102

85:                                               ; preds = %78, %71, %64, %57, %50, %43
  %86 = load i32, i32* @DEBUG_EXTRA2, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %98 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %99 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 (i32, i8*, i32, ...) @PDEBUG(i32 %86, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %91, i8* %97, i32* %100)
  store i32 -1, i32* %5, align 4
  br label %196

102:                                              ; preds = %78, %31
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %104 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %105 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = call %struct.net_device* @prism2_rx_get_wds(%struct.TYPE_8__* %103, i32* %106)
  %108 = load %struct.net_device**, %struct.net_device*** %9, align 8
  store %struct.net_device* %107, %struct.net_device** %108, align 8
  %109 = load %struct.net_device**, %struct.net_device*** %9, align 8
  %110 = load %struct.net_device*, %struct.net_device** %109, align 8
  %111 = icmp eq %struct.net_device* %110, null
  br i1 %111, label %112, label %170

112:                                              ; preds = %102
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %170

117:                                              ; preds = %112
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @IW_MODE_INFRA, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %140, label %123

123:                                              ; preds = %117
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @HOSTAP_WDS_AP_CLIENT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %123
  %131 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %132 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @ETH_ALEN, align 4
  %138 = call i64 @memcmp(i32* %133, i32 %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %170

140:                                              ; preds = %130, %123, %117
  %141 = load i32, i32* @DEBUG_EXTRA, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %148 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 (i32, i8*, i32, ...) @PDEBUG(i32 %141, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %146, i32* %149)
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = icmp ne %struct.TYPE_9__* %153, null
  br i1 %154, label %155, label %169

155:                                              ; preds = %140
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %155
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %164 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %165 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* @WDS_ADD, align 4
  %168 = call i32 @hostap_wds_link_oper(%struct.TYPE_8__* %163, i32* %166, i32 %167)
  br label %169

169:                                              ; preds = %162, %155, %140
  store i32 -1, i32* %5, align 4
  br label %196

170:                                              ; preds = %130, %112, %102
  %171 = load %struct.net_device**, %struct.net_device*** %9, align 8
  %172 = load %struct.net_device*, %struct.net_device** %171, align 8
  %173 = icmp ne %struct.net_device* %172, null
  br i1 %173, label %174, label %195

174:                                              ; preds = %170
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %195, label %179

179:                                              ; preds = %174
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %181, align 8
  %183 = icmp ne %struct.TYPE_9__* %182, null
  br i1 %183, label %184, label %195

184:                                              ; preds = %179
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %189 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = call i64 @hostap_is_sta_assoc(%struct.TYPE_9__* %187, i32* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %184
  %194 = load %struct.net_device**, %struct.net_device*** %9, align 8
  store %struct.net_device* null, %struct.net_device** %194, align 8
  br label %195

195:                                              ; preds = %193, %184, %179, %174, %170
  store i32 0, i32* %5, align 4
  br label %196

196:                                              ; preds = %195, %169, %85, %30
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, ...) #1

declare dso_local %struct.net_device* @prism2_rx_get_wds(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @hostap_wds_link_oper(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i64 @hostap_is_sta_assoc(%struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
