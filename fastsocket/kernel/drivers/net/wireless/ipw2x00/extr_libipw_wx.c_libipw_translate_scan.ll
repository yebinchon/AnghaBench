; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_wx.c_libipw_translate_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_wx.c_libipw_translate_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_device = type { i64, i64 }
%struct.libipw_network = type { i8*, i64, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i64, i64 }
%struct.iw_request_info = type { i32 }
%struct.iw_event = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i64, i64 }
%struct.TYPE_10__ = type { i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i8*, i32 }

@MAX_CUSTOM_LEN = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IW_EV_ADDR_LEN = common dso_local global i32 0, align 4
@SIOCGIWESSID = common dso_local global i32 0, align 4
@SIOCGIWNAME = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"IEEE 802.11%s\00", align 1
@libipw_modes = common dso_local global i8** null, align 8
@IW_EV_CHAR_LEN = common dso_local global i32 0, align 4
@SIOCGIWMODE = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_ESS = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@IW_MODE_MASTER = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i32 0, align 4
@IW_EV_UINT_LEN = common dso_local global i32 0, align 4
@SIOCGIWFREQ = common dso_local global i32 0, align 4
@IW_EV_FREQ_LEN = common dso_local global i32 0, align 4
@SIOCGIWENCODE = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4
@IW_ENCODE_NOKEY = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@SIOCGIWRATE = common dso_local global i32 0, align 4
@IW_EV_PARAM_LEN = common dso_local global i32 0, align 4
@IWEVQUAL = common dso_local global i32 0, align 4
@IW_QUAL_QUAL_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_LEVEL_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_NOISE_UPDATED = common dso_local global i32 0, align 4
@LIBIPW_STATMASK_RSSI = common dso_local global i32 0, align 4
@IW_QUAL_QUAL_INVALID = common dso_local global i32 0, align 4
@IW_QUAL_LEVEL_INVALID = common dso_local global i32 0, align 4
@LIBIPW_STATMASK_NOISE = common dso_local global i32 0, align 4
@IW_QUAL_NOISE_INVALID = common dso_local global i32 0, align 4
@LIBIPW_STATMASK_SIGNAL = common dso_local global i32 0, align 4
@IW_EV_QUAL_LEN = common dso_local global i32 0, align 4
@IWEVCUSTOM = common dso_local global i8* null, align 8
@MAX_WPA_IE_LEN = common dso_local global i32 0, align 4
@IWEVGENIE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c" Last beacon: %ums ago\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" Channel flags: \00", align 1
@LIBIPW_CH_INVALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"INVALID \00", align 1
@LIBIPW_CH_RADAR_DETECT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"DFS \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.libipw_device*, i8*, i8*, %struct.libipw_network*, %struct.iw_request_info*)* @libipw_translate_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @libipw_translate_scan(%struct.libipw_device* %0, i8* %1, i8* %2, %struct.libipw_network* %3, %struct.iw_request_info* %4) #0 {
  %6 = alloca %struct.libipw_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.libipw_network*, align 8
  %10 = alloca %struct.iw_request_info*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.iw_event, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store %struct.libipw_device* %0, %struct.libipw_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.libipw_network* %3, %struct.libipw_network** %9, align 8
  store %struct.iw_request_info* %4, %struct.iw_request_info** %10, align 8
  %23 = load i32, i32* @MAX_CUSTOM_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %11, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %27 = load i32, i32* @SIOCGIWAP, align 4
  %28 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* @ARPHRD_ETHER, align 4
  %30 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 8
  %33 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %38 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %37, i32 0, i32 15
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = call i32 @memcpy(i8* %36, i32 %39, i32 %40)
  %42 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* @IW_EV_ADDR_LEN, align 4
  %46 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %42, i8* %43, i8* %44, %struct.iw_event* %14, i32 %45)
  store i8* %46, i8** %7, align 8
  %47 = load i32, i32* @SIOCGIWESSID, align 4
  %48 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %53 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %52, i32 0, i32 14
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @min(i32 %54, i32 32)
  %56 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %63 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %59, i8* %60, i8* %61, %struct.iw_event* %14, i8* %64)
  store i8* %65, i8** %7, align 8
  %66 = load i32, i32* @SIOCGIWNAME, align 4
  %67 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  store i32 %66, i32* %67, align 8
  %68 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = load i32, i32* @IFNAMSIZ, align 4
  %74 = load i8**, i8*** @libipw_modes, align 8
  %75 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %76 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i8*, i8** %74, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %72, i32 %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %79)
  %81 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* @IW_EV_CHAR_LEN, align 4
  %85 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %81, i8* %82, i8* %83, %struct.iw_event* %14, i32 %84)
  store i8* %85, i8** %7, align 8
  %86 = load i32, i32* @SIOCGIWMODE, align 4
  %87 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  store i32 %86, i32* %87, align 8
  %88 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %89 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %92 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %93 = or i32 %91, %92
  %94 = and i32 %90, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %117

96:                                               ; preds = %5
  %97 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %98 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i32, i32* @IW_MODE_MASTER, align 4
  %105 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  br label %111

107:                                              ; preds = %96
  %108 = load i32, i32* @IW_MODE_ADHOC, align 4
  %109 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %107, %103
  %112 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = load i32, i32* @IW_EV_UINT_LEN, align 4
  %116 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %112, i8* %113, i8* %114, %struct.iw_event* %14, i32 %115)
  store i8* %116, i8** %7, align 8
  br label %117

117:                                              ; preds = %111, %5
  %118 = load i32, i32* @SIOCGIWFREQ, align 4
  %119 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  store i32 %118, i32* %119, align 8
  %120 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %121 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %122 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @libipw_channel_to_freq(%struct.libipw_device* %120, i32 %123)
  %125 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  store i32 %124, i32* %127, align 8
  %128 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  store i32 6, i32* %130, align 8
  %131 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  store i32 0, i32* %133, align 4
  %134 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %135 = load i8*, i8** %7, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = load i32, i32* @IW_EV_FREQ_LEN, align 4
  %138 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %134, i8* %135, i8* %136, %struct.iw_event* %14, i32 %137)
  store i8* %138, i8** %7, align 8
  %139 = load i32, i32* @SIOCGIWENCODE, align 4
  %140 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  store i32 %139, i32* %140, align 8
  %141 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %142 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %117
  %148 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %149 = load i32, i32* @IW_ENCODE_NOKEY, align 4
  %150 = or i32 %148, %149
  %151 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  store i32 %150, i32* %153, align 8
  br label %159

154:                                              ; preds = %117
  %155 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %156 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 8
  br label %159

159:                                              ; preds = %154, %147
  %160 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  store i32 0, i32* %162, align 4
  %163 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %164 = load i8*, i8** %7, align 8
  %165 = load i8*, i8** %8, align 8
  %166 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %167 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %163, i8* %164, i8* %165, %struct.iw_event* %14, i8* %168)
  store i8* %169, i8** %7, align 8
  %170 = load i8*, i8** %7, align 8
  %171 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %172 = call i32 @iwe_stream_lcp_len(%struct.iw_request_info* %171)
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  store i8* %174, i8** %17, align 8
  %175 = load i32, i32* @SIOCGIWRATE, align 4
  %176 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  store i32 %175, i32* %176, align 8
  %177 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  store i64 0, i64* %179, align 8
  %180 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 2
  store i64 0, i64* %182, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %183

183:                                              ; preds = %233, %159
  %184 = load i32, i32* %15, align 4
  %185 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %186 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = icmp slt i32 %184, %187
  br i1 %188, label %189, label %246

189:                                              ; preds = %183
  %190 = load i32, i32* %16, align 4
  %191 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %192 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = icmp slt i32 %190, %193
  br i1 %194, label %195, label %223

195:                                              ; preds = %189
  %196 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %197 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %196, i32 0, i32 5
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %16, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, 127
  %204 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %205 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %204, i32 0, i32 6
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %15, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = and i32 %210, 127
  %212 = icmp slt i32 %203, %211
  br i1 %212, label %213, label %223

213:                                              ; preds = %195
  %214 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %215 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %214, i32 0, i32 5
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %16, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %16, align 4
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i32, i32* %216, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = and i32 %221, 127
  store i32 %222, i32* %18, align 4
  br label %233

223:                                              ; preds = %195, %189
  %224 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %225 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %224, i32 0, i32 6
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %15, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %15, align 4
  %229 = sext i32 %227 to i64
  %230 = getelementptr inbounds i32, i32* %226, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = and i32 %231, 127
  store i32 %232, i32* %18, align 4
  br label %233

233:                                              ; preds = %223, %213
  %234 = load i32, i32* %18, align 4
  %235 = and i32 %234, 127
  %236 = mul nsw i32 %235, 500000
  %237 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 0
  store i32 %236, i32* %239, align 8
  %240 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %241 = load i8*, i8** %7, align 8
  %242 = load i8*, i8** %17, align 8
  %243 = load i8*, i8** %8, align 8
  %244 = load i32, i32* @IW_EV_PARAM_LEN, align 4
  %245 = call i8* @iwe_stream_add_value(%struct.iw_request_info* %240, i8* %241, i8* %242, i8* %243, %struct.iw_event* %14, i32 %244)
  store i8* %245, i8** %17, align 8
  br label %183

246:                                              ; preds = %183
  br label %247

247:                                              ; preds = %274, %246
  %248 = load i32, i32* %16, align 4
  %249 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %250 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = icmp slt i32 %248, %251
  br i1 %252, label %253, label %277

253:                                              ; preds = %247
  %254 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %255 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %254, i32 0, i32 5
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %16, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = and i32 %260, 127
  store i32 %261, i32* %18, align 4
  %262 = load i32, i32* %18, align 4
  %263 = and i32 %262, 127
  %264 = mul nsw i32 %263, 500000
  %265 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 0
  store i32 %264, i32* %267, align 8
  %268 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %269 = load i8*, i8** %7, align 8
  %270 = load i8*, i8** %17, align 8
  %271 = load i8*, i8** %8, align 8
  %272 = load i32, i32* @IW_EV_PARAM_LEN, align 4
  %273 = call i8* @iwe_stream_add_value(%struct.iw_request_info* %268, i8* %269, i8* %270, i8* %271, %struct.iw_event* %14, i32 %272)
  store i8* %273, i8** %17, align 8
  br label %274

274:                                              ; preds = %253
  %275 = load i32, i32* %16, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %16, align 4
  br label %247

277:                                              ; preds = %247
  %278 = load i8*, i8** %17, align 8
  %279 = load i8*, i8** %7, align 8
  %280 = ptrtoint i8* %278 to i64
  %281 = ptrtoint i8* %279 to i64
  %282 = sub i64 %280, %281
  %283 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %284 = call i32 @iwe_stream_lcp_len(%struct.iw_request_info* %283)
  %285 = sext i32 %284 to i64
  %286 = icmp sgt i64 %282, %285
  br i1 %286, label %287, label %289

287:                                              ; preds = %277
  %288 = load i8*, i8** %17, align 8
  store i8* %288, i8** %7, align 8
  br label %289

289:                                              ; preds = %287, %277
  %290 = load i32, i32* @IWEVQUAL, align 4
  %291 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  store i32 %290, i32* %291, align 8
  %292 = load i32, i32* @IW_QUAL_QUAL_UPDATED, align 4
  %293 = load i32, i32* @IW_QUAL_LEVEL_UPDATED, align 4
  %294 = or i32 %292, %293
  %295 = load i32, i32* @IW_QUAL_NOISE_UPDATED, align 4
  %296 = or i32 %294, %295
  %297 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 0
  store i32 %296, i32* %299, align 8
  %300 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %301 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %300, i32 0, i32 13
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @LIBIPW_STATMASK_RSSI, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %319, label %307

307:                                              ; preds = %289
  %308 = load i32, i32* @IW_QUAL_QUAL_INVALID, align 4
  %309 = load i32, i32* @IW_QUAL_LEVEL_INVALID, align 4
  %310 = or i32 %308, %309
  %311 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = or i32 %314, %310
  store i32 %315, i32* %313, align 8
  %316 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 1
  store i32 0, i32* %318, align 4
  br label %420

319:                                              ; preds = %289
  %320 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %321 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %324 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = icmp eq i64 %322, %325
  br i1 %326, label %327, label %331

327:                                              ; preds = %319
  %328 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i32 0, i32 1
  store i32 100, i32* %330, align 4
  br label %398

331:                                              ; preds = %319
  %332 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %333 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %336 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = sub nsw i64 %334, %337
  %339 = mul nsw i64 100, %338
  %340 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %341 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %344 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %343, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = sub nsw i64 %342, %345
  %347 = mul nsw i64 %339, %346
  %348 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %349 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %352 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %351, i32 0, i32 13
  %353 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = sext i32 %354 to i64
  %356 = sub nsw i64 %350, %355
  %357 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %358 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %361 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = sub nsw i64 %359, %362
  %364 = mul nsw i64 15, %363
  %365 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %366 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %369 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %368, i32 0, i32 13
  %370 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = sext i32 %371 to i64
  %373 = sub nsw i64 %367, %372
  %374 = mul nsw i64 62, %373
  %375 = add nsw i64 %364, %374
  %376 = mul nsw i64 %356, %375
  %377 = sub nsw i64 %347, %376
  %378 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %379 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %382 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %381, i32 0, i32 1
  %383 = load i64, i64* %382, align 8
  %384 = sub nsw i64 %380, %383
  %385 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %386 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %389 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %388, i32 0, i32 1
  %390 = load i64, i64* %389, align 8
  %391 = sub nsw i64 %387, %390
  %392 = mul nsw i64 %384, %391
  %393 = sdiv i64 %377, %392
  %394 = trunc i64 %393 to i32
  %395 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %396, i32 0, i32 1
  store i32 %394, i32* %397, align 4
  br label %398

398:                                              ; preds = %331, %327
  %399 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %399, i32 0, i32 1
  %401 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = icmp sgt i32 %402, 100
  br i1 %403, label %404, label %408

404:                                              ; preds = %398
  %405 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %406 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %406, i32 0, i32 1
  store i32 100, i32* %407, align 4
  br label %419

408:                                              ; preds = %398
  %409 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = icmp slt i32 %412, 1
  br i1 %413, label %414, label %418

414:                                              ; preds = %408
  %415 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %415, i32 0, i32 1
  %417 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %416, i32 0, i32 1
  store i32 0, i32* %417, align 4
  br label %418

418:                                              ; preds = %414, %408
  br label %419

419:                                              ; preds = %418, %404
  br label %420

420:                                              ; preds = %419, %307
  %421 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %422 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %421, i32 0, i32 13
  %423 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = load i32, i32* @LIBIPW_STATMASK_NOISE, align 4
  %426 = and i32 %424, %425
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %438, label %428

428:                                              ; preds = %420
  %429 = load i32, i32* @IW_QUAL_NOISE_INVALID, align 4
  %430 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %431 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = or i32 %433, %429
  store i32 %434, i32* %432, align 8
  %435 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %436 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %436, i32 0, i32 3
  store i64 0, i64* %437, align 8
  br label %446

438:                                              ; preds = %420
  %439 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %440 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %439, i32 0, i32 13
  %441 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %440, i32 0, i32 3
  %442 = load i64, i64* %441, align 8
  %443 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %444, i32 0, i32 3
  store i64 %442, i64* %445, align 8
  br label %446

446:                                              ; preds = %438, %428
  %447 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %448 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %447, i32 0, i32 13
  %449 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = load i32, i32* @LIBIPW_STATMASK_SIGNAL, align 4
  %452 = and i32 %450, %451
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %464, label %454

454:                                              ; preds = %446
  %455 = load i32, i32* @IW_QUAL_LEVEL_INVALID, align 4
  %456 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %457 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %456, i32 0, i32 1
  %458 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = or i32 %459, %455
  store i32 %460, i32* %458, align 8
  %461 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %462 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %461, i32 0, i32 1
  %463 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %462, i32 0, i32 2
  store i64 0, i64* %463, align 8
  br label %472

464:                                              ; preds = %446
  %465 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %466 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %465, i32 0, i32 13
  %467 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %466, i32 0, i32 2
  %468 = load i64, i64* %467, align 8
  %469 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %470 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %470, i32 0, i32 2
  store i64 %468, i64* %471, align 8
  br label %472

472:                                              ; preds = %464, %454
  %473 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %474 = load i8*, i8** %7, align 8
  %475 = load i8*, i8** %8, align 8
  %476 = load i32, i32* @IW_EV_QUAL_LEN, align 4
  %477 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %473, i8* %474, i8* %475, %struct.iw_event* %14, i32 %476)
  store i8* %477, i8** %7, align 8
  %478 = load i8*, i8** @IWEVCUSTOM, align 8
  %479 = ptrtoint i8* %478 to i32
  %480 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  store i32 %479, i32* %480, align 8
  store i8* %26, i8** %13, align 8
  %481 = load i8*, i8** %13, align 8
  %482 = ptrtoint i8* %481 to i64
  %483 = ptrtoint i8* %26 to i64
  %484 = sub i64 %482, %483
  %485 = trunc i64 %484 to i32
  %486 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %487 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %486, i32 0, i32 0
  %488 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %487, i32 0, i32 1
  store i32 %485, i32* %488, align 4
  %489 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %490 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %499

494:                                              ; preds = %472
  %495 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %496 = load i8*, i8** %7, align 8
  %497 = load i8*, i8** %8, align 8
  %498 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %495, i8* %496, i8* %497, %struct.iw_event* %14, i8* %26)
  store i8* %498, i8** %7, align 8
  br label %499

499:                                              ; preds = %494, %472
  %500 = call i32 @memset(%struct.iw_event* %14, i32 0, i32 104)
  %501 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %502 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %501, i32 0, i32 7
  %503 = load i32, i32* %502, align 8
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %531

505:                                              ; preds = %499
  %506 = load i32, i32* @MAX_WPA_IE_LEN, align 4
  %507 = zext i32 %506 to i64
  %508 = call i8* @llvm.stacksave()
  store i8* %508, i8** %19, align 8
  %509 = alloca i8, i64 %507, align 16
  store i64 %507, i64* %20, align 8
  %510 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %511 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %510, i32 0, i32 12
  %512 = load i32, i32* %511, align 4
  %513 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %514 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %513, i32 0, i32 7
  %515 = load i32, i32* %514, align 8
  %516 = call i32 @memcpy(i8* %509, i32 %512, i32 %515)
  %517 = load i8*, i8** @IWEVGENIE, align 8
  %518 = ptrtoint i8* %517 to i32
  %519 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  store i32 %518, i32* %519, align 8
  %520 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %521 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %520, i32 0, i32 7
  %522 = load i32, i32* %521, align 8
  %523 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %524 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %523, i32 0, i32 0
  %525 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %524, i32 0, i32 1
  store i32 %522, i32* %525, align 4
  %526 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %527 = load i8*, i8** %7, align 8
  %528 = load i8*, i8** %8, align 8
  %529 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %526, i8* %527, i8* %528, %struct.iw_event* %14, i8* %509)
  store i8* %529, i8** %7, align 8
  %530 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %530)
  br label %531

531:                                              ; preds = %505, %499
  %532 = call i32 @memset(%struct.iw_event* %14, i32 0, i32 104)
  %533 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %534 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %533, i32 0, i32 8
  %535 = load i32, i32* %534, align 4
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %563

537:                                              ; preds = %531
  %538 = load i32, i32* @MAX_WPA_IE_LEN, align 4
  %539 = zext i32 %538 to i64
  %540 = call i8* @llvm.stacksave()
  store i8* %540, i8** %21, align 8
  %541 = alloca i8, i64 %539, align 16
  store i64 %539, i64* %22, align 8
  %542 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %543 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %542, i32 0, i32 11
  %544 = load i32, i32* %543, align 8
  %545 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %546 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %545, i32 0, i32 8
  %547 = load i32, i32* %546, align 4
  %548 = call i32 @memcpy(i8* %541, i32 %544, i32 %547)
  %549 = load i8*, i8** @IWEVGENIE, align 8
  %550 = ptrtoint i8* %549 to i32
  %551 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  store i32 %550, i32* %551, align 8
  %552 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %553 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %552, i32 0, i32 8
  %554 = load i32, i32* %553, align 4
  %555 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %556 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %555, i32 0, i32 0
  %557 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %556, i32 0, i32 1
  store i32 %554, i32* %557, align 4
  %558 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %559 = load i8*, i8** %7, align 8
  %560 = load i8*, i8** %8, align 8
  %561 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %558, i8* %559, i8* %560, %struct.iw_event* %14, i8* %541)
  store i8* %561, i8** %7, align 8
  %562 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %562)
  br label %563

563:                                              ; preds = %537, %531
  %564 = load i8*, i8** @IWEVCUSTOM, align 8
  %565 = ptrtoint i8* %564 to i32
  %566 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  store i32 %565, i32* %566, align 8
  store i8* %26, i8** %13, align 8
  %567 = load i8*, i8** %13, align 8
  %568 = load i32, i32* @MAX_CUSTOM_LEN, align 4
  %569 = sext i32 %568 to i64
  %570 = load i8*, i8** %13, align 8
  %571 = ptrtoint i8* %570 to i64
  %572 = ptrtoint i8* %26 to i64
  %573 = sub i64 %571, %572
  %574 = sub nsw i64 %569, %573
  %575 = trunc i64 %574 to i32
  %576 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %577 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %576, i32 0, i32 10
  %578 = load i32, i32* %577, align 4
  %579 = call i32 @elapsed_jiffies_msecs(i32 %578)
  %580 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %567, i32 %575, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %579)
  %581 = load i8*, i8** %13, align 8
  %582 = sext i32 %580 to i64
  %583 = getelementptr inbounds i8, i8* %581, i64 %582
  store i8* %583, i8** %13, align 8
  %584 = load i8*, i8** %13, align 8
  %585 = ptrtoint i8* %584 to i64
  %586 = ptrtoint i8* %26 to i64
  %587 = sub i64 %585, %586
  %588 = trunc i64 %587 to i32
  %589 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %590 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %589, i32 0, i32 0
  %591 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %590, i32 0, i32 1
  store i32 %588, i32* %591, align 4
  %592 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %593 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %592, i32 0, i32 0
  %594 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %593, i32 0, i32 1
  %595 = load i32, i32* %594, align 4
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %602

597:                                              ; preds = %563
  %598 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %599 = load i8*, i8** %7, align 8
  %600 = load i8*, i8** %8, align 8
  %601 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %598, i8* %599, i8* %600, %struct.iw_event* %14, i8* %26)
  store i8* %601, i8** %7, align 8
  br label %602

602:                                              ; preds = %597, %563
  %603 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  store i32 -1, i32* %603, align 8
  store i8* %26, i8** %13, align 8
  %604 = load i8*, i8** %13, align 8
  %605 = load i32, i32* @MAX_CUSTOM_LEN, align 4
  %606 = sext i32 %605 to i64
  %607 = load i8*, i8** %13, align 8
  %608 = ptrtoint i8* %607 to i64
  %609 = ptrtoint i8* %26 to i64
  %610 = sub i64 %608, %609
  %611 = sub nsw i64 %606, %610
  %612 = trunc i64 %611 to i32
  %613 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %604, i32 %612, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %614 = load i8*, i8** %13, align 8
  %615 = sext i32 %613 to i64
  %616 = getelementptr inbounds i8, i8* %614, i64 %615
  store i8* %616, i8** %13, align 8
  %617 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %618 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %619 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %618, i32 0, i32 9
  %620 = load i32, i32* %619, align 8
  %621 = call i32 @libipw_get_channel_flags(%struct.libipw_device* %617, i32 %620)
  %622 = load i32, i32* @LIBIPW_CH_INVALID, align 4
  %623 = and i32 %621, %622
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %625, label %642

625:                                              ; preds = %602
  %626 = load i8*, i8** @IWEVCUSTOM, align 8
  %627 = ptrtoint i8* %626 to i32
  %628 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  store i32 %627, i32* %628, align 8
  %629 = load i8*, i8** %13, align 8
  %630 = load i32, i32* @MAX_CUSTOM_LEN, align 4
  %631 = sext i32 %630 to i64
  %632 = load i8*, i8** %13, align 8
  %633 = ptrtoint i8* %632 to i64
  %634 = ptrtoint i8* %26 to i64
  %635 = sub i64 %633, %634
  %636 = sub nsw i64 %631, %635
  %637 = trunc i64 %636 to i32
  %638 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %629, i32 %637, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %639 = load i8*, i8** %13, align 8
  %640 = sext i32 %638 to i64
  %641 = getelementptr inbounds i8, i8* %639, i64 %640
  store i8* %641, i8** %13, align 8
  br label %642

642:                                              ; preds = %625, %602
  %643 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %644 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %645 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %644, i32 0, i32 9
  %646 = load i32, i32* %645, align 8
  %647 = call i32 @libipw_get_channel_flags(%struct.libipw_device* %643, i32 %646)
  %648 = load i32, i32* @LIBIPW_CH_RADAR_DETECT, align 4
  %649 = and i32 %647, %648
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %651, label %668

651:                                              ; preds = %642
  %652 = load i8*, i8** @IWEVCUSTOM, align 8
  %653 = ptrtoint i8* %652 to i32
  %654 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  store i32 %653, i32* %654, align 8
  %655 = load i8*, i8** %13, align 8
  %656 = load i32, i32* @MAX_CUSTOM_LEN, align 4
  %657 = sext i32 %656 to i64
  %658 = load i8*, i8** %13, align 8
  %659 = ptrtoint i8* %658 to i64
  %660 = ptrtoint i8* %26 to i64
  %661 = sub i64 %659, %660
  %662 = sub nsw i64 %657, %661
  %663 = trunc i64 %662 to i32
  %664 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %655, i32 %663, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %665 = load i8*, i8** %13, align 8
  %666 = sext i32 %664 to i64
  %667 = getelementptr inbounds i8, i8* %665, i64 %666
  store i8* %667, i8** %13, align 8
  br label %668

668:                                              ; preds = %651, %642
  %669 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 0
  %670 = load i32, i32* %669, align 8
  %671 = sext i32 %670 to i64
  %672 = inttoptr i64 %671 to i8*
  %673 = load i8*, i8** @IWEVCUSTOM, align 8
  %674 = icmp eq i8* %672, %673
  br i1 %674, label %675, label %688

675:                                              ; preds = %668
  %676 = load i8*, i8** %13, align 8
  %677 = ptrtoint i8* %676 to i64
  %678 = ptrtoint i8* %26 to i64
  %679 = sub i64 %677, %678
  %680 = trunc i64 %679 to i32
  %681 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %14, i32 0, i32 1
  %682 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %681, i32 0, i32 0
  %683 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %682, i32 0, i32 1
  store i32 %680, i32* %683, align 4
  %684 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %685 = load i8*, i8** %7, align 8
  %686 = load i8*, i8** %8, align 8
  %687 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %684, i8* %685, i8* %686, %struct.iw_event* %14, i8* %26)
  store i8* %687, i8** %7, align 8
  br label %688

688:                                              ; preds = %675, %668
  %689 = load i8*, i8** %7, align 8
  %690 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %690)
  ret i8* %689
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i8* @iwe_stream_add_event(%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, i32) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i8* @iwe_stream_add_point(%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @libipw_channel_to_freq(%struct.libipw_device*, i32) #2

declare dso_local i32 @iwe_stream_lcp_len(%struct.iw_request_info*) #2

declare dso_local i8* @iwe_stream_add_value(%struct.iw_request_info*, i8*, i8*, i8*, %struct.iw_event*, i32) #2

declare dso_local i32 @memset(%struct.iw_event*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @elapsed_jiffies_msecs(i32) #2

declare dso_local i32 @libipw_get_channel_flags(%struct.libipw_device*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
