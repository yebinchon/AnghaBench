; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ioctl.c___prism2_translate_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ioctl.c___prism2_translate_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.iw_request_info = type { i32 }
%struct.hfa384x_hostscan_result = type { i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hostap_bss_info = type { i32*, i64, i32*, i32, i32, i32, i8*, i32, i8* }
%struct.iw_event = type { %struct.TYPE_14__, i8* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, i32, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@SIOCGIWAP = common dso_local global i8* null, align 8
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IW_EV_ADDR_LEN = common dso_local global i32 0, align 4
@SIOCGIWESSID = common dso_local global i8* null, align 8
@SIOCGIWMODE = common dso_local global i8* null, align 8
@WLAN_CAPABILITY_ESS = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@IW_MODE_MASTER = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i32 0, align 4
@IW_EV_UINT_LEN = common dso_local global i32 0, align 4
@SIOCGIWFREQ = common dso_local global i8* null, align 8
@freq_list = common dso_local global i32* null, align 8
@IW_EV_FREQ_LEN = common dso_local global i32 0, align 4
@IWEVQUAL = common dso_local global i8* null, align 8
@PRISM2_HOSTSCAN = common dso_local global i64 0, align 8
@IW_QUAL_LEVEL_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_NOISE_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_QUAL_INVALID = common dso_local global i32 0, align 4
@IW_QUAL_DBM = common dso_local global i32 0, align 4
@IW_EV_QUAL_LEN = common dso_local global i32 0, align 4
@SIOCGIWENCODE = common dso_local global i8* null, align 8
@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4
@IW_ENCODE_NOKEY = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SIOCGIWRATE = common dso_local global i8* null, align 8
@IW_EV_PARAM_LEN = common dso_local global i32 0, align 4
@MAX_WPA_IE_LEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IWEVCUSTOM = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"bcn_int=%d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"resp_rate=%d\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"atim=%d\00", align 1
@IWEVGENIE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_15__*, %struct.iw_request_info*, %struct.hfa384x_hostscan_result*, %struct.hostap_bss_info*, i8*, i8*)* @__prism2_translate_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__prism2_translate_scan(%struct.TYPE_15__* %0, %struct.iw_request_info* %1, %struct.hfa384x_hostscan_result* %2, %struct.hostap_bss_info* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.iw_request_info*, align 8
  %9 = alloca %struct.hfa384x_hostscan_result*, align 8
  %10 = alloca %struct.hostap_bss_info*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.iw_event, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %8, align 8
  store %struct.hfa384x_hostscan_result* %2, %struct.hfa384x_hostscan_result** %9, align 8
  store %struct.hostap_bss_info* %3, %struct.hostap_bss_info** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %23 = load %struct.hostap_bss_info*, %struct.hostap_bss_info** %10, align 8
  %24 = icmp ne %struct.hostap_bss_info* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %6
  %26 = load %struct.hostap_bss_info*, %struct.hostap_bss_info** %10, align 8
  %27 = getelementptr inbounds %struct.hostap_bss_info, %struct.hostap_bss_info* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %19, align 8
  %29 = load %struct.hostap_bss_info*, %struct.hostap_bss_info** %10, align 8
  %30 = getelementptr inbounds %struct.hostap_bss_info, %struct.hostap_bss_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %21, align 8
  %32 = load %struct.hostap_bss_info*, %struct.hostap_bss_info** %10, align 8
  %33 = getelementptr inbounds %struct.hostap_bss_info, %struct.hostap_bss_info* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %20, align 8
  br label %47

35:                                               ; preds = %6
  %36 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %9, align 8
  %37 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %19, align 8
  %39 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %9, align 8
  %40 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %21, align 8
  %44 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %9, align 8
  %45 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %20, align 8
  br label %47

47:                                               ; preds = %35, %25
  %48 = load i64, i64* %21, align 8
  %49 = icmp ugt i64 %48, 32
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i64 32, i64* %21, align 8
  br label %51

51:                                               ; preds = %50, %47
  %52 = call i32 @memset(%struct.iw_event* %15, i32 0, i32 64)
  %53 = load i8*, i8** @SIOCGIWAP, align 8
  %54 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 1
  store i8* %53, i8** %54, align 8
  %55 = load i32, i32* @ARPHRD_ETHER, align 4
  %56 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %20, align 8
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = call i32 @memcpy(i32 %62, i32* %63, i32 %64)
  %66 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i32, i32* @IW_EV_ADDR_LEN, align 4
  %70 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %66, i8* %67, i8* %68, %struct.iw_event* %15, i32 %69)
  store i8* %70, i8** %11, align 8
  %71 = call i32 @memset(%struct.iw_event* %15, i32 0, i32 64)
  %72 = load i8*, i8** @SIOCGIWESSID, align 8
  %73 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 1
  store i8* %72, i8** %73, align 8
  %74 = load i64, i64* %21, align 8
  %75 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  store i64 %74, i64* %77, align 8
  %78 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  store i32 1, i32* %80, align 8
  %81 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = load i32*, i32** %19, align 8
  %85 = call i8* (%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, ...) @iwe_stream_add_point(%struct.iw_request_info* %81, i8* %82, i8* %83, %struct.iw_event* %15, i32* %84)
  store i8* %85, i8** %11, align 8
  %86 = call i32 @memset(%struct.iw_event* %15, i32 0, i32 64)
  %87 = load i8*, i8** @SIOCGIWMODE, align 8
  %88 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 1
  store i8* %87, i8** %88, align 8
  %89 = load %struct.hostap_bss_info*, %struct.hostap_bss_info** %10, align 8
  %90 = icmp ne %struct.hostap_bss_info* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %51
  %92 = load %struct.hostap_bss_info*, %struct.hostap_bss_info** %10, align 8
  %93 = getelementptr inbounds %struct.hostap_bss_info, %struct.hostap_bss_info* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %17, align 4
  br label %100

95:                                               ; preds = %51
  %96 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %9, align 8
  %97 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %96, i32 0, i32 9
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @le16_to_cpu(i32 %98)
  store i32 %99, i32* %17, align 4
  br label %100

100:                                              ; preds = %95, %91
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %103 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %104 = or i32 %102, %103
  %105 = and i32 %101, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %100
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i32, i32* @IW_MODE_MASTER, align 4
  %114 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 8
  br label %120

116:                                              ; preds = %107
  %117 = load i32, i32* @IW_MODE_ADHOC, align 4
  %118 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %116, %112
  %121 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = load i8*, i8** %12, align 8
  %124 = load i32, i32* @IW_EV_UINT_LEN, align 4
  %125 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %121, i8* %122, i8* %123, %struct.iw_event* %15, i32 %124)
  store i8* %125, i8** %11, align 8
  br label %126

126:                                              ; preds = %120, %100
  %127 = call i32 @memset(%struct.iw_event* %15, i32 0, i32 64)
  %128 = load i8*, i8** @SIOCGIWFREQ, align 8
  %129 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 1
  store i8* %128, i8** %129, align 8
  %130 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %9, align 8
  %131 = icmp ne %struct.hfa384x_hostscan_result* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %126
  %133 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %9, align 8
  %134 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @le16_to_cpu(i32 %135)
  store i32 %136, i32* %14, align 4
  br label %146

137:                                              ; preds = %126
  %138 = load %struct.hostap_bss_info*, %struct.hostap_bss_info** %10, align 8
  %139 = icmp ne %struct.hostap_bss_info* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load %struct.hostap_bss_info*, %struct.hostap_bss_info** %10, align 8
  %142 = getelementptr inbounds %struct.hostap_bss_info, %struct.hostap_bss_info* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %14, align 4
  br label %145

144:                                              ; preds = %137
  store i32 0, i32* %14, align 4
  br label %145

145:                                              ; preds = %144, %140
  br label %146

146:                                              ; preds = %145, %132
  %147 = load i32, i32* %14, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %168

149:                                              ; preds = %146
  %150 = load i32*, i32** @freq_list, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 %155, 100000
  %157 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  store i32 %156, i32* %159, align 8
  %160 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  store i32 1, i32* %162, align 4
  %163 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %164 = load i8*, i8** %11, align 8
  %165 = load i8*, i8** %12, align 8
  %166 = load i32, i32* @IW_EV_FREQ_LEN, align 4
  %167 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %163, i8* %164, i8* %165, %struct.iw_event* %15, i32 %166)
  store i8* %167, i8** %11, align 8
  br label %168

168:                                              ; preds = %149, %146
  %169 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %9, align 8
  %170 = icmp ne %struct.hfa384x_hostscan_result* %169, null
  br i1 %170, label %171, label %230

171:                                              ; preds = %168
  %172 = call i32 @memset(%struct.iw_event* %15, i32 0, i32 64)
  %173 = load i8*, i8** @IWEVQUAL, align 8
  %174 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 1
  store i8* %173, i8** %174, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @PRISM2_HOSTSCAN, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %195

180:                                              ; preds = %171
  %181 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %9, align 8
  %182 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @le16_to_cpu(i32 %183)
  %185 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  store i32 %184, i32* %187, align 4
  %188 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %9, align 8
  %189 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @le16_to_cpu(i32 %190)
  %192 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  store i32 %191, i32* %194, align 4
  br label %214

195:                                              ; preds = %171
  %196 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %9, align 8
  %197 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @le16_to_cpu(i32 %198)
  %200 = call i8* @HFA384X_LEVEL_TO_dBm(i32 %199)
  %201 = ptrtoint i8* %200 to i32
  %202 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  store i32 %201, i32* %204, align 4
  %205 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %9, align 8
  %206 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @le16_to_cpu(i32 %207)
  %209 = call i8* @HFA384X_LEVEL_TO_dBm(i32 %208)
  %210 = ptrtoint i8* %209 to i32
  %211 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 1
  store i32 %210, i32* %213, align 4
  br label %214

214:                                              ; preds = %195, %180
  %215 = load i32, i32* @IW_QUAL_LEVEL_UPDATED, align 4
  %216 = load i32, i32* @IW_QUAL_NOISE_UPDATED, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* @IW_QUAL_QUAL_INVALID, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @IW_QUAL_DBM, align 4
  %221 = or i32 %219, %220
  %222 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 2
  store i32 %221, i32* %224, align 4
  %225 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %226 = load i8*, i8** %11, align 8
  %227 = load i8*, i8** %12, align 8
  %228 = load i32, i32* @IW_EV_QUAL_LEN, align 4
  %229 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %225, i8* %226, i8* %227, %struct.iw_event* %15, i32 %228)
  store i8* %229, i8** %11, align 8
  br label %230

230:                                              ; preds = %214, %168
  %231 = call i32 @memset(%struct.iw_event* %15, i32 0, i32 64)
  %232 = load i8*, i8** @SIOCGIWENCODE, align 8
  %233 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 1
  store i8* %232, i8** %233, align 8
  %234 = load i32, i32* %17, align 4
  %235 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %230
  %239 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %240 = load i32, i32* @IW_ENCODE_NOKEY, align 4
  %241 = or i32 %239, %240
  %242 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 1
  store i32 %241, i32* %244, align 8
  br label %250

245:                                              ; preds = %230
  %246 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %247 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 1
  store i32 %246, i32* %249, align 8
  br label %250

250:                                              ; preds = %245, %238
  %251 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 0
  store i64 0, i64* %253, align 8
  %254 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %255 = load i8*, i8** %11, align 8
  %256 = load i8*, i8** %12, align 8
  %257 = call i8* (%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, ...) @iwe_stream_add_point(%struct.iw_request_info* %254, i8* %255, i8* %256, %struct.iw_event* %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %257, i8** %11, align 8
  %258 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %9, align 8
  %259 = icmp ne %struct.hfa384x_hostscan_result* %258, null
  br i1 %259, label %260, label %317

260:                                              ; preds = %250
  %261 = call i32 @memset(%struct.iw_event* %15, i32 0, i32 64)
  %262 = load i8*, i8** @SIOCGIWRATE, align 8
  %263 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 1
  store i8* %262, i8** %263, align 8
  %264 = load i8*, i8** %11, align 8
  %265 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %266 = call i32 @iwe_stream_lcp_len(%struct.iw_request_info* %265)
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8, i8* %264, i64 %267
  store i8* %268, i8** %16, align 8
  %269 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %9, align 8
  %270 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %269, i32 0, i32 2
  %271 = load i32*, i32** %270, align 8
  store i32* %271, i32** %18, align 8
  store i32 0, i32* %13, align 4
  br label %272

272:                                              ; preds = %301, %260
  %273 = load i32, i32* %13, align 4
  %274 = sext i32 %273 to i64
  %275 = icmp ult i64 %274, 8
  br i1 %275, label %276, label %304

276:                                              ; preds = %272
  %277 = load i32*, i32** %18, align 8
  %278 = load i32, i32* %13, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %276
  br label %304

284:                                              ; preds = %276
  %285 = load i32*, i32** %18, align 8
  %286 = load i32, i32* %13, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = and i32 %289, 127
  %291 = mul nsw i32 %290, 500000
  %292 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 0
  store i32 %291, i32* %294, align 8
  %295 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %296 = load i8*, i8** %11, align 8
  %297 = load i8*, i8** %16, align 8
  %298 = load i8*, i8** %12, align 8
  %299 = load i32, i32* @IW_EV_PARAM_LEN, align 4
  %300 = call i8* @iwe_stream_add_value(%struct.iw_request_info* %295, i8* %296, i8* %297, i8* %298, %struct.iw_event* %15, i32 %299)
  store i8* %300, i8** %16, align 8
  br label %301

301:                                              ; preds = %284
  %302 = load i32, i32* %13, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %13, align 4
  br label %272

304:                                              ; preds = %283, %272
  %305 = load i8*, i8** %16, align 8
  %306 = load i8*, i8** %11, align 8
  %307 = ptrtoint i8* %305 to i64
  %308 = ptrtoint i8* %306 to i64
  %309 = sub i64 %307, %308
  %310 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %311 = call i32 @iwe_stream_lcp_len(%struct.iw_request_info* %310)
  %312 = sext i32 %311 to i64
  %313 = icmp sgt i64 %309, %312
  br i1 %313, label %314, label %316

314:                                              ; preds = %304
  %315 = load i8*, i8** %16, align 8
  store i8* %315, i8** %11, align 8
  br label %316

316:                                              ; preds = %314, %304
  br label %317

317:                                              ; preds = %316, %250
  %318 = load i32, i32* @MAX_WPA_IE_LEN, align 4
  %319 = mul nsw i32 %318, 2
  %320 = add nsw i32 %319, 30
  %321 = load i32, i32* @GFP_ATOMIC, align 4
  %322 = call i8* @kmalloc(i32 %320, i32 %321)
  store i8* %322, i8** %22, align 8
  %323 = load i8*, i8** %22, align 8
  %324 = icmp ne i8* %323, null
  br i1 %324, label %325, label %401

325:                                              ; preds = %317
  %326 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %9, align 8
  %327 = icmp ne %struct.hfa384x_hostscan_result* %326, null
  br i1 %327, label %328, label %401

328:                                              ; preds = %325
  %329 = call i32 @memset(%struct.iw_event* %15, i32 0, i32 64)
  %330 = load i8*, i8** @IWEVCUSTOM, align 8
  %331 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 1
  store i8* %330, i8** %331, align 8
  %332 = load i8*, i8** %22, align 8
  %333 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %9, align 8
  %334 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %333, i32 0, i32 5
  %335 = load i32, i32* %334, align 8
  %336 = call i32 @le16_to_cpu(i32 %335)
  %337 = call i32 @sprintf(i8* %332, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %336)
  %338 = load i8*, i8** %22, align 8
  %339 = call i8* @strlen(i8* %338)
  %340 = ptrtoint i8* %339 to i64
  %341 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i32 0, i32 0
  store i64 %340, i64* %343, align 8
  %344 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %345 = load i8*, i8** %11, align 8
  %346 = load i8*, i8** %12, align 8
  %347 = load i8*, i8** %22, align 8
  %348 = call i8* (%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, ...) @iwe_stream_add_point(%struct.iw_request_info* %344, i8* %345, i8* %346, %struct.iw_event* %15, i8* %347)
  store i8* %348, i8** %11, align 8
  %349 = call i32 @memset(%struct.iw_event* %15, i32 0, i32 64)
  %350 = load i8*, i8** @IWEVCUSTOM, align 8
  %351 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 1
  store i8* %350, i8** %351, align 8
  %352 = load i8*, i8** %22, align 8
  %353 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %9, align 8
  %354 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %353, i32 0, i32 4
  %355 = load i32, i32* %354, align 4
  %356 = call i32 @le16_to_cpu(i32 %355)
  %357 = call i32 @sprintf(i8* %352, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %356)
  %358 = load i8*, i8** %22, align 8
  %359 = call i8* @strlen(i8* %358)
  %360 = ptrtoint i8* %359 to i64
  %361 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %362, i32 0, i32 0
  store i64 %360, i64* %363, align 8
  %364 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %365 = load i8*, i8** %11, align 8
  %366 = load i8*, i8** %12, align 8
  %367 = load i8*, i8** %22, align 8
  %368 = call i8* (%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, ...) @iwe_stream_add_point(%struct.iw_request_info* %364, i8* %365, i8* %366, %struct.iw_event* %15, i8* %367)
  store i8* %368, i8** %11, align 8
  %369 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %370 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* @PRISM2_HOSTSCAN, align 8
  %373 = icmp eq i64 %371, %372
  br i1 %373, label %374, label %400

374:                                              ; preds = %328
  %375 = load i32, i32* %17, align 4
  %376 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %400

379:                                              ; preds = %374
  %380 = call i32 @memset(%struct.iw_event* %15, i32 0, i32 64)
  %381 = load i8*, i8** @IWEVCUSTOM, align 8
  %382 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 1
  store i8* %381, i8** %382, align 8
  %383 = load i8*, i8** %22, align 8
  %384 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %9, align 8
  %385 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %384, i32 0, i32 3
  %386 = load i32, i32* %385, align 8
  %387 = call i32 @le16_to_cpu(i32 %386)
  %388 = call i32 @sprintf(i8* %383, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %387)
  %389 = load i8*, i8** %22, align 8
  %390 = call i8* @strlen(i8* %389)
  %391 = ptrtoint i8* %390 to i64
  %392 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %393, i32 0, i32 0
  store i64 %391, i64* %394, align 8
  %395 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %396 = load i8*, i8** %11, align 8
  %397 = load i8*, i8** %12, align 8
  %398 = load i8*, i8** %22, align 8
  %399 = call i8* (%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, ...) @iwe_stream_add_point(%struct.iw_request_info* %395, i8* %396, i8* %397, %struct.iw_event* %15, i8* %398)
  store i8* %399, i8** %11, align 8
  br label %400

400:                                              ; preds = %379, %374, %328
  br label %401

401:                                              ; preds = %400, %325, %317
  %402 = load i8*, i8** %22, align 8
  %403 = call i32 @kfree(i8* %402)
  %404 = load %struct.hostap_bss_info*, %struct.hostap_bss_info** %10, align 8
  %405 = icmp ne %struct.hostap_bss_info* %404, null
  br i1 %405, label %406, label %435

406:                                              ; preds = %401
  %407 = load %struct.hostap_bss_info*, %struct.hostap_bss_info** %10, align 8
  %408 = getelementptr inbounds %struct.hostap_bss_info, %struct.hostap_bss_info* %407, i32 0, i32 5
  %409 = load i32, i32* %408, align 8
  %410 = icmp sgt i32 %409, 0
  br i1 %410, label %411, label %435

411:                                              ; preds = %406
  %412 = load %struct.hostap_bss_info*, %struct.hostap_bss_info** %10, align 8
  %413 = getelementptr inbounds %struct.hostap_bss_info, %struct.hostap_bss_info* %412, i32 0, i32 5
  %414 = load i32, i32* %413, align 8
  %415 = load i32, i32* @MAX_WPA_IE_LEN, align 4
  %416 = icmp sle i32 %414, %415
  br i1 %416, label %417, label %435

417:                                              ; preds = %411
  %418 = call i32 @memset(%struct.iw_event* %15, i32 0, i32 64)
  %419 = load i8*, i8** @IWEVGENIE, align 8
  %420 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 1
  store i8* %419, i8** %420, align 8
  %421 = load %struct.hostap_bss_info*, %struct.hostap_bss_info** %10, align 8
  %422 = getelementptr inbounds %struct.hostap_bss_info, %struct.hostap_bss_info* %421, i32 0, i32 5
  %423 = load i32, i32* %422, align 8
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %426, i32 0, i32 0
  store i64 %424, i64* %427, align 8
  %428 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %429 = load i8*, i8** %11, align 8
  %430 = load i8*, i8** %12, align 8
  %431 = load %struct.hostap_bss_info*, %struct.hostap_bss_info** %10, align 8
  %432 = getelementptr inbounds %struct.hostap_bss_info, %struct.hostap_bss_info* %431, i32 0, i32 6
  %433 = load i8*, i8** %432, align 8
  %434 = call i8* (%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, ...) @iwe_stream_add_point(%struct.iw_request_info* %428, i8* %429, i8* %430, %struct.iw_event* %15, i8* %433)
  store i8* %434, i8** %11, align 8
  br label %435

435:                                              ; preds = %417, %411, %406, %401
  %436 = load %struct.hostap_bss_info*, %struct.hostap_bss_info** %10, align 8
  %437 = icmp ne %struct.hostap_bss_info* %436, null
  br i1 %437, label %438, label %467

438:                                              ; preds = %435
  %439 = load %struct.hostap_bss_info*, %struct.hostap_bss_info** %10, align 8
  %440 = getelementptr inbounds %struct.hostap_bss_info, %struct.hostap_bss_info* %439, i32 0, i32 7
  %441 = load i32, i32* %440, align 8
  %442 = icmp sgt i32 %441, 0
  br i1 %442, label %443, label %467

443:                                              ; preds = %438
  %444 = load %struct.hostap_bss_info*, %struct.hostap_bss_info** %10, align 8
  %445 = getelementptr inbounds %struct.hostap_bss_info, %struct.hostap_bss_info* %444, i32 0, i32 7
  %446 = load i32, i32* %445, align 8
  %447 = load i32, i32* @MAX_WPA_IE_LEN, align 4
  %448 = icmp sle i32 %446, %447
  br i1 %448, label %449, label %467

449:                                              ; preds = %443
  %450 = call i32 @memset(%struct.iw_event* %15, i32 0, i32 64)
  %451 = load i8*, i8** @IWEVGENIE, align 8
  %452 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 1
  store i8* %451, i8** %452, align 8
  %453 = load %struct.hostap_bss_info*, %struct.hostap_bss_info** %10, align 8
  %454 = getelementptr inbounds %struct.hostap_bss_info, %struct.hostap_bss_info* %453, i32 0, i32 7
  %455 = load i32, i32* %454, align 8
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %458, i32 0, i32 0
  store i64 %456, i64* %459, align 8
  %460 = load %struct.iw_request_info*, %struct.iw_request_info** %8, align 8
  %461 = load i8*, i8** %11, align 8
  %462 = load i8*, i8** %12, align 8
  %463 = load %struct.hostap_bss_info*, %struct.hostap_bss_info** %10, align 8
  %464 = getelementptr inbounds %struct.hostap_bss_info, %struct.hostap_bss_info* %463, i32 0, i32 8
  %465 = load i8*, i8** %464, align 8
  %466 = call i8* (%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, ...) @iwe_stream_add_point(%struct.iw_request_info* %460, i8* %461, i8* %462, %struct.iw_event* %15, i8* %465)
  store i8* %466, i8** %11, align 8
  br label %467

467:                                              ; preds = %449, %443, %438, %435
  %468 = load i8*, i8** %11, align 8
  ret i8* %468
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.iw_event*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i8* @iwe_stream_add_event(%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, i32) #1

declare dso_local i8* @iwe_stream_add_point(%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, ...) #1

declare dso_local i8* @HFA384X_LEVEL_TO_dBm(i32) #1

declare dso_local i32 @iwe_stream_lcp_len(%struct.iw_request_info*) #1

declare dso_local i8* @iwe_stream_add_value(%struct.iw_request_info*, i8*, i8*, i8*, %struct.iw_event*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
