; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wl3501_cs.c_wl3501_get_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wl3501_cs.c_wl3501_get_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i64 }
%struct.wl3501_card = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.iw_event = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_14__, i32, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@SIOCGIWAP = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IW_SCAN_MAX_DATA = common dso_local global i32 0, align 4
@IW_EV_ADDR_LEN = common dso_local global i32 0, align 4
@SIOCGIWESSID = common dso_local global i32 0, align 4
@SIOCGIWMODE = common dso_local global i32 0, align 4
@IW_EV_UINT_LEN = common dso_local global i32 0, align 4
@SIOCGIWFREQ = common dso_local global i32 0, align 4
@IW_EV_FREQ_LEN = common dso_local global i32 0, align 4
@SIOCGIWENCODE = common dso_local global i32 0, align 4
@WL3501_MGMT_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4
@IW_ENCODE_NOKEY = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @wl3501_get_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl3501_get_scan(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wl3501_card*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.iw_event, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.wl3501_card* @netdev_priv(%struct.net_device* %13)
  store %struct.wl3501_card* %14, %struct.wl3501_card** %9, align 8
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** %11, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %166, %4
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.wl3501_card*, %struct.wl3501_card** %9, align 8
  %19 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %169

22:                                               ; preds = %16
  %23 = load i32, i32* @SIOCGIWAP, align 4
  %24 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* @ARPHRD_ETHER, align 4
  %26 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.wl3501_card*, %struct.wl3501_card** %9, align 8
  %34 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %33, i32 0, i32 1
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @memcpy(i32 %32, i32 %40, i32 %41)
  %43 = load %struct.iw_request_info*, %struct.iw_request_info** %6, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* @IW_SCAN_MAX_DATA, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i32, i32* @IW_EV_ADDR_LEN, align 4
  %50 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %43, i8* %44, i8* %48, %struct.iw_event* %12, i32 %49)
  store i8* %50, i8** %11, align 8
  %51 = load i32, i32* @SIOCGIWESSID, align 4
  %52 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 1
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.wl3501_card*, %struct.wl3501_card** %9, align 8
  %57 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %56, i32 0, i32 1
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  store i64 %65, i64* %68, align 8
  %69 = load %struct.iw_request_info*, %struct.iw_request_info** %6, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* @IW_SCAN_MAX_DATA, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load %struct.wl3501_card*, %struct.wl3501_card** %9, align 8
  %76 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %75, i32 0, i32 1
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %69, i8* %70, i8* %74, %struct.iw_event* %12, i32* %83)
  store i8* %84, i8** %11, align 8
  %85 = load i32, i32* @SIOCGIWMODE, align 4
  %86 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 1
  store i32 %85, i32* %86, align 8
  %87 = load %struct.wl3501_card*, %struct.wl3501_card** %9, align 8
  %88 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %87, i32 0, i32 1
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.iw_request_info*, %struct.iw_request_info** %6, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load i32, i32* @IW_SCAN_MAX_DATA, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i32, i32* @IW_EV_UINT_LEN, align 4
  %104 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %97, i8* %98, i8* %102, %struct.iw_event* %12, i32 %103)
  store i8* %104, i8** %11, align 8
  %105 = load i32, i32* @SIOCGIWFREQ, align 4
  %106 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 1
  store i32 %105, i32* %106, align 8
  %107 = load %struct.wl3501_card*, %struct.wl3501_card** %9, align 8
  %108 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %107, i32 0, i32 1
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 8
  %119 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  store i64 0, i64* %121, align 8
  %122 = load %struct.iw_request_info*, %struct.iw_request_info** %6, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = load i32, i32* @IW_SCAN_MAX_DATA, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i32, i32* @IW_EV_FREQ_LEN, align 4
  %129 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %122, i8* %123, i8* %127, %struct.iw_event* %12, i32 %128)
  store i8* %129, i8** %11, align 8
  %130 = load i32, i32* @SIOCGIWENCODE, align 4
  %131 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 1
  store i32 %130, i32* %131, align 8
  %132 = load %struct.wl3501_card*, %struct.wl3501_card** %9, align 8
  %133 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %132, i32 0, i32 1
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @WL3501_MGMT_CAPABILITY_PRIVACY, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %22
  %144 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %145 = load i32, i32* @IW_ENCODE_NOKEY, align 4
  %146 = or i32 %144, %145
  %147 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  store i32 %146, i32* %149, align 8
  br label %155

150:                                              ; preds = %22
  %151 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %152 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  store i32 %151, i32* %154, align 8
  br label %155

155:                                              ; preds = %150, %143
  %156 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %12, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  store i64 0, i64* %158, align 8
  %159 = load %struct.iw_request_info*, %struct.iw_request_info** %6, align 8
  %160 = load i8*, i8** %11, align 8
  %161 = load i8*, i8** %8, align 8
  %162 = load i32, i32* @IW_SCAN_MAX_DATA, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  %165 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %159, i8* %160, i8* %164, %struct.iw_event* %12, i32* null)
  store i8* %165, i8** %11, align 8
  br label %166

166:                                              ; preds = %155
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  br label %16

169:                                              ; preds = %16
  %170 = load i8*, i8** %11, align 8
  %171 = load i8*, i8** %8, align 8
  %172 = ptrtoint i8* %170 to i64
  %173 = ptrtoint i8* %171 to i64
  %174 = sub i64 %172, %173
  %175 = trunc i64 %174 to i32
  %176 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %177 = bitcast %union.iwreq_data* %176 to %struct.TYPE_18__*
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 0
  store i32 %175, i32* %178, align 8
  %179 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %180 = bitcast %union.iwreq_data* %179 to %struct.TYPE_18__*
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 1
  store i64 0, i64* %181, align 8
  ret i32 0
}

declare dso_local %struct.wl3501_card* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @iwe_stream_add_event(%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, i32) #1

declare dso_local i8* @iwe_stream_add_point(%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
