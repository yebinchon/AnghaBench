; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_prism2_ap_translate_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_prism2_ap_translate_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.hostap_interface = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.ap_data* }
%struct.ap_data = type { i32, %struct.list_head }
%struct.list_head = type { %struct.list_head* }
%struct.iw_event = type { %struct.TYPE_13__, i32, i8* }
%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_12__, %struct.TYPE_10__, i32, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i8*, i8* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.sta_info = type { i32, i32, i32, i32, i32, %struct.TYPE_15__, i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8*, i32, i32 }

@IW_SCAN_MAX_DATA = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IW_EV_ADDR_LEN = common dso_local global i8* null, align 8
@SIOCGIWMODE = common dso_local global i32 0, align 4
@IW_MODE_MASTER = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i32 0, align 4
@IW_EV_UINT_LEN = common dso_local global i8* null, align 8
@IWEVQUAL = common dso_local global i32 0, align 4
@IW_EV_QUAL_LEN = common dso_local global i8* null, align 8
@SIOCGIWESSID = common dso_local global i32 0, align 4
@SIOCGIWENCODE = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4
@IW_ENCODE_NOKEY = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@FREQ_COUNT = common dso_local global i32 0, align 4
@SIOCGIWFREQ = common dso_local global i32 0, align 4
@freq_list = common dso_local global i32* null, align 8
@IW_EV_FREQ_LEN = common dso_local global i8* null, align 8
@IWEVCUSTOM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"beacon_interval=%d\00", align 1
@IW_QUAL_DBM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prism2_ap_translate_scan(%struct.net_device* %0, %struct.iw_request_info* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.iw_request_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hostap_interface*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.ap_data*, align 8
  %10 = alloca %struct.list_head*, align 8
  %11 = alloca %struct.iw_event, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [64 x i8], align 16
  %15 = alloca %struct.sta_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @IW_SCAN_MAX_DATA, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8* %20, i8** %13, align 8
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %21)
  store %struct.hostap_interface* %22, %struct.hostap_interface** %7, align 8
  %23 = load %struct.hostap_interface*, %struct.hostap_interface** %7, align 8
  %24 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %23, i32 0, i32 0
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %8, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load %struct.ap_data*, %struct.ap_data** %27, align 8
  store %struct.ap_data* %28, %struct.ap_data** %9, align 8
  %29 = load %struct.ap_data*, %struct.ap_data** %9, align 8
  %30 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %29, i32 0, i32 0
  %31 = call i32 @spin_lock_bh(i32* %30)
  %32 = load %struct.ap_data*, %struct.ap_data** %9, align 8
  %33 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i32 0, i32 0
  %35 = load %struct.list_head*, %struct.list_head** %34, align 8
  store %struct.list_head* %35, %struct.list_head** %10, align 8
  br label %36

36:                                               ; preds = %282, %3
  %37 = load %struct.list_head*, %struct.list_head** %10, align 8
  %38 = icmp ne %struct.list_head* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.list_head*, %struct.list_head** %10, align 8
  %41 = load %struct.ap_data*, %struct.ap_data** %9, align 8
  %42 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %41, i32 0, i32 1
  %43 = icmp ne %struct.list_head* %40, %42
  br label %44

44:                                               ; preds = %39, %36
  %45 = phi i1 [ false, %36 ], [ %43, %39 ]
  br i1 %45, label %46, label %286

46:                                               ; preds = %44
  %47 = load %struct.list_head*, %struct.list_head** %10, align 8
  %48 = bitcast %struct.list_head* %47 to %struct.sta_info*
  store %struct.sta_info* %48, %struct.sta_info** %15, align 8
  %49 = call i32 @memset(%struct.iw_event* %11, i32 0, i32 72)
  %50 = load i32, i32* @SIOCGIWAP, align 4
  %51 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 1
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* @ARPHRD_ETHER, align 4
  %53 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %61 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ETH_ALEN, align 4
  %64 = call i32 @memcpy(i32 %59, i32 %62, i32 %63)
  %65 = load i8*, i8** @IW_EV_ADDR_LEN, align 8
  %66 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 2
  store i8* %65, i8** %66, align 8
  %67 = load %struct.iw_request_info*, %struct.iw_request_info** %5, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = load i8*, i8** @IW_EV_ADDR_LEN, align 8
  %71 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %67, i8* %68, i8* %69, %struct.iw_event* %11, i8* %70)
  store i8* %71, i8** %12, align 8
  %72 = call i32 @memset(%struct.iw_event* %11, i32 0, i32 72)
  %73 = load i32, i32* @SIOCGIWMODE, align 4
  %74 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 1
  store i32 %73, i32* %74, align 8
  %75 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %76 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %46
  %80 = load i32, i32* @IW_MODE_MASTER, align 4
  %81 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  br label %87

83:                                               ; preds = %46
  %84 = load i32, i32* @IW_MODE_INFRA, align 4
  %85 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i8*, i8** @IW_EV_UINT_LEN, align 8
  %89 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 2
  store i8* %88, i8** %89, align 8
  %90 = load %struct.iw_request_info*, %struct.iw_request_info** %5, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = load i8*, i8** @IW_EV_UINT_LEN, align 8
  %94 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %90, i8* %91, i8* %92, %struct.iw_event* %11, i8* %93)
  store i8* %94, i8** %12, align 8
  %95 = call i32 @memset(%struct.iw_event* %11, i32 0, i32 72)
  %96 = load i32, i32* @IWEVQUAL, align 4
  %97 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 1
  store i32 %96, i32* %97, align 8
  %98 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %99 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %87
  %103 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %104 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %105, 27
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %115

108:                                              ; preds = %102
  %109 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %110 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %111, 27
  %113 = mul nsw i32 %112, 92
  %114 = sdiv i32 %113, 127
  br label %115

115:                                              ; preds = %108, %107
  %116 = phi i32 [ 0, %107 ], [ %114, %108 ]
  %117 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  br label %132

120:                                              ; preds = %87
  %121 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %122 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %125 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %123, %126
  %128 = sub nsw i32 %127, 35
  %129 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 8
  br label %132

132:                                              ; preds = %120, %115
  %133 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %134 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @HFA384X_LEVEL_TO_dBm(i32 %135)
  %137 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 3
  store i8* %136, i8** %139, align 8
  %140 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %141 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i8* @HFA384X_LEVEL_TO_dBm(i32 %142)
  %144 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  store i8* %143, i8** %146, align 8
  %147 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %148 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  store i32 %149, i32* %152, align 4
  %153 = load i8*, i8** @IW_EV_QUAL_LEN, align 8
  %154 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 2
  store i8* %153, i8** %154, align 8
  %155 = load %struct.iw_request_info*, %struct.iw_request_info** %5, align 8
  %156 = load i8*, i8** %12, align 8
  %157 = load i8*, i8** %13, align 8
  %158 = load i8*, i8** @IW_EV_QUAL_LEN, align 8
  %159 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %155, i8* %156, i8* %157, %struct.iw_event* %11, i8* %158)
  store i8* %159, i8** %12, align 8
  %160 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %161 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %160, i32 0, i32 6
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %278

164:                                              ; preds = %132
  %165 = call i32 @memset(%struct.iw_event* %11, i32 0, i32 72)
  %166 = load i32, i32* @SIOCGIWESSID, align 4
  %167 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 1
  store i32 %166, i32* %167, align 8
  %168 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %169 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  store i32 %172, i32* %175, align 4
  %176 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  store i32 1, i32* %178, align 8
  %179 = load %struct.iw_request_info*, %struct.iw_request_info** %5, align 8
  %180 = load i8*, i8** %12, align 8
  %181 = load i8*, i8** %13, align 8
  %182 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %183 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %179, i8* %180, i8* %181, %struct.iw_event* %11, i8* %186)
  store i8* %187, i8** %12, align 8
  %188 = call i32 @memset(%struct.iw_event* %11, i32 0, i32 72)
  %189 = load i32, i32* @SIOCGIWENCODE, align 4
  %190 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 1
  store i32 %189, i32* %190, align 8
  %191 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %192 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %164
  %198 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %199 = load i32, i32* @IW_ENCODE_NOKEY, align 4
  %200 = or i32 %198, %199
  %201 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  store i32 %200, i32* %203, align 8
  br label %209

204:                                              ; preds = %164
  %205 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %206 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 0
  store i32 %205, i32* %208, align 8
  br label %209

209:                                              ; preds = %204, %197
  %210 = load %struct.iw_request_info*, %struct.iw_request_info** %5, align 8
  %211 = load i8*, i8** %12, align 8
  %212 = load i8*, i8** %13, align 8
  %213 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %214 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %213, i32 0, i32 5
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %210, i8* %211, i8* %212, %struct.iw_event* %11, i8* %217)
  store i8* %218, i8** %12, align 8
  %219 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %220 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %259

225:                                              ; preds = %209
  %226 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %227 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %226, i32 0, i32 5
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @FREQ_COUNT, align 4
  %232 = icmp sle i32 %230, %231
  br i1 %232, label %233, label %259

233:                                              ; preds = %225
  %234 = call i32 @memset(%struct.iw_event* %11, i32 0, i32 72)
  %235 = load i32, i32* @SIOCGIWFREQ, align 4
  %236 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 1
  store i32 %235, i32* %236, align 8
  %237 = load i32*, i32** @freq_list, align 8
  %238 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %239 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %238, i32 0, i32 5
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = sub nsw i32 %242, 1
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %237, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = mul nsw i32 %246, 100000
  %248 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 0
  store i32 %247, i32* %250, align 8
  %251 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 1
  store i32 1, i32* %253, align 4
  %254 = load %struct.iw_request_info*, %struct.iw_request_info** %5, align 8
  %255 = load i8*, i8** %12, align 8
  %256 = load i8*, i8** %13, align 8
  %257 = load i8*, i8** @IW_EV_FREQ_LEN, align 8
  %258 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %254, i8* %255, i8* %256, %struct.iw_event* %11, i8* %257)
  store i8* %258, i8** %12, align 8
  br label %259

259:                                              ; preds = %233, %225, %209
  %260 = call i32 @memset(%struct.iw_event* %11, i32 0, i32 72)
  %261 = load i32, i32* @IWEVCUSTOM, align 4
  %262 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 1
  store i32 %261, i32* %262, align 8
  %263 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %264 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %265 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @sprintf(i8* %263, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %266)
  %268 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %269 = call i32 @strlen(i8* %268)
  %270 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 1
  store i32 %269, i32* %272, align 4
  %273 = load %struct.iw_request_info*, %struct.iw_request_info** %5, align 8
  %274 = load i8*, i8** %12, align 8
  %275 = load i8*, i8** %13, align 8
  %276 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %277 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %273, i8* %274, i8* %275, %struct.iw_event* %11, i8* %276)
  store i8* %277, i8** %12, align 8
  br label %278

278:                                              ; preds = %259, %132
  %279 = load i32, i32* @IW_QUAL_DBM, align 4
  %280 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %281 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %280, i32 0, i32 4
  store i32 %279, i32* %281, align 8
  br label %282

282:                                              ; preds = %278
  %283 = load %struct.list_head*, %struct.list_head** %10, align 8
  %284 = getelementptr inbounds %struct.list_head, %struct.list_head* %283, i32 0, i32 0
  %285 = load %struct.list_head*, %struct.list_head** %284, align 8
  store %struct.list_head* %285, %struct.list_head** %10, align 8
  br label %36

286:                                              ; preds = %44
  %287 = load %struct.ap_data*, %struct.ap_data** %9, align 8
  %288 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %287, i32 0, i32 0
  %289 = call i32 @spin_unlock_bh(i32* %288)
  %290 = load i8*, i8** %12, align 8
  %291 = load i8*, i8** %6, align 8
  %292 = ptrtoint i8* %290 to i64
  %293 = ptrtoint i8* %291 to i64
  %294 = sub i64 %292, %293
  %295 = trunc i64 %294 to i32
  ret i32 %295
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memset(%struct.iw_event*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @iwe_stream_add_event(%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, i8*) #1

declare dso_local i8* @HFA384X_LEVEL_TO_dBm(i32) #1

declare dso_local i8* @iwe_stream_add_point(%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
