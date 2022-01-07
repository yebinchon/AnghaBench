; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_get_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_get_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i64 }
%struct.atmel_private = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, i32, i32, i32, i32*, i32 }
%struct.iw_event = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@SITE_SURVEY_COMPLETED = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@IW_SCAN_MAX_DATA = common dso_local global i32 0, align 4
@IW_EV_ADDR_LEN = common dso_local global i32 0, align 4
@SIOCGIWESSID = common dso_local global i32 0, align 4
@SIOCGIWMODE = common dso_local global i32 0, align 4
@IW_EV_UINT_LEN = common dso_local global i32 0, align 4
@SIOCGIWFREQ = common dso_local global i32 0, align 4
@IW_EV_FREQ_LEN = common dso_local global i32 0, align 4
@IWEVQUAL = common dso_local global i32 0, align 4
@IW_EV_QUAL_LEN = common dso_local global i32 0, align 4
@SIOCGIWENCODE = common dso_local global i32 0, align 4
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4
@IW_ENCODE_NOKEY = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @atmel_get_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_get_scan(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.atmel_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.iw_event, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.atmel_private* @netdev_priv(%struct.net_device* %14)
  store %struct.atmel_private* %15, %struct.atmel_private** %10, align 8
  %16 = load i8*, i8** %9, align 8
  store i8* %16, i8** %12, align 8
  %17 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %18 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SITE_SURVEY_COMPLETED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %221

25:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %207, %25
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %29 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %210

32:                                               ; preds = %26
  %33 = load i32, i32* @SIOCGIWAP, align 4
  %34 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* @ARPHRD_ETHER, align 4
  %36 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %44 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %43, i32 0, i32 2
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @memcpy(i32 %42, i32 %50, i32 6)
  %52 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* @IW_SCAN_MAX_DATA, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i32, i32* @IW_EV_ADDR_LEN, align 4
  %59 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %52, i8* %53, i8* %57, %struct.iw_event* %13, i32 %58)
  store i8* %59, i8** %12, align 8
  %60 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %61 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %60, i32 0, i32 2
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %74, 32
  br i1 %75, label %76, label %80

76:                                               ; preds = %32
  %77 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store i32 32, i32* %79, align 8
  br label %80

80:                                               ; preds = %76, %32
  %81 = load i32, i32* @SIOCGIWESSID, align 4
  %82 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 1
  store i32 %81, i32* %82, align 8
  %83 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  %86 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load i32, i32* @IW_SCAN_MAX_DATA, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %93 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %92, i32 0, i32 2
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 5
  %99 = load i32*, i32** %98, align 8
  %100 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %86, i8* %87, i8* %91, %struct.iw_event* %13, i32* %99)
  store i8* %100, i8** %12, align 8
  %101 = load i32, i32* @SIOCGIWMODE, align 4
  %102 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 1
  store i32 %101, i32* %102, align 8
  %103 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %104 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %103, i32 0, i32 2
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 8
  %113 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = load i8*, i8** %9, align 8
  %116 = load i32, i32* @IW_SCAN_MAX_DATA, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i32, i32* @IW_EV_UINT_LEN, align 4
  %120 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %113, i8* %114, i8* %118, %struct.iw_event* %13, i32 %119)
  store i8* %120, i8** %12, align 8
  %121 = load i32, i32* @SIOCGIWFREQ, align 4
  %122 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 1
  store i32 %121, i32* %122, align 8
  %123 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %124 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %123, i32 0, i32 2
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  store i32 %130, i32* %133, align 8
  %134 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  store i64 0, i64* %136, align 8
  %137 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = load i8*, i8** %9, align 8
  %140 = load i32, i32* @IW_SCAN_MAX_DATA, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i32, i32* @IW_EV_FREQ_LEN, align 4
  %144 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %137, i8* %138, i8* %142, %struct.iw_event* %13, i32 %143)
  store i8* %144, i8** %12, align 8
  %145 = load i32, i32* @IWEVQUAL, align 4
  %146 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 1
  store i32 %145, i32* %146, align 8
  %147 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %148 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %147, i32 0, i32 2
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  store i32 %154, i32* %157, align 8
  %158 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 4
  %165 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %166 = load i8*, i8** %12, align 8
  %167 = load i8*, i8** %9, align 8
  %168 = load i32, i32* @IW_SCAN_MAX_DATA, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load i32, i32* @IW_EV_QUAL_LEN, align 4
  %172 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %165, i8* %166, i8* %170, %struct.iw_event* %13, i32 %171)
  store i8* %172, i8** %12, align 8
  %173 = load i32, i32* @SIOCGIWENCODE, align 4
  %174 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 1
  store i32 %173, i32* %174, align 8
  %175 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %176 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %175, i32 0, i32 2
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %176, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %80
  %185 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %186 = load i32, i32* @IW_ENCODE_NOKEY, align 4
  %187 = or i32 %185, %186
  %188 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 1
  store i32 %187, i32* %190, align 4
  br label %196

191:                                              ; preds = %80
  %192 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %193 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 1
  store i32 %192, i32* %195, align 4
  br label %196

196:                                              ; preds = %191, %184
  %197 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %13, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  store i32 0, i32* %199, align 8
  %200 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %201 = load i8*, i8** %12, align 8
  %202 = load i8*, i8** %9, align 8
  %203 = load i32, i32* @IW_SCAN_MAX_DATA, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %200, i8* %201, i8* %205, %struct.iw_event* %13, i32* null)
  store i8* %206, i8** %12, align 8
  br label %207

207:                                              ; preds = %196
  %208 = load i32, i32* %11, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %11, align 4
  br label %26

210:                                              ; preds = %26
  %211 = load i8*, i8** %12, align 8
  %212 = load i8*, i8** %9, align 8
  %213 = ptrtoint i8* %211 to i64
  %214 = ptrtoint i8* %212 to i64
  %215 = sub i64 %213, %214
  %216 = trunc i64 %215 to i32
  %217 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %218 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 8
  %219 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %220 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %219, i32 0, i32 1
  store i64 0, i64* %220, align 8
  store i32 0, i32* %5, align 4
  br label %221

221:                                              ; preds = %210, %22
  %222 = load i32, i32* %5, align 4
  ret i32 %222
}

declare dso_local %struct.atmel_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @iwe_stream_add_event(%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, i32) #1

declare dso_local i8* @iwe_stream_add_point(%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
