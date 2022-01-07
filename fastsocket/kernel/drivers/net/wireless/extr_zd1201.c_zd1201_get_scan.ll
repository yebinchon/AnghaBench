; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_get_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_get_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i64 }
%struct.zd1201 = type { i32, i32, i32*, i64, i32, i64 }
%struct.iw_event = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }

@IW_SCAN_MAX_DATA = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ZD1201_CMDCODE_INQUIRE = common dso_local global i32 0, align 4
@ZD1201_INQ_SCANRESULTS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@IW_EV_ADDR_LEN = common dso_local global i32 0, align 4
@SIOCGIWESSID = common dso_local global i32 0, align 4
@SIOCGIWMODE = common dso_local global i32 0, align 4
@IW_MODE_MASTER = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i32 0, align 4
@IW_EV_UINT_LEN = common dso_local global i32 0, align 4
@SIOCGIWFREQ = common dso_local global i32 0, align 4
@IW_EV_FREQ_LEN = common dso_local global i32 0, align 4
@SIOCGIWRATE = common dso_local global i32 0, align 4
@IW_EV_PARAM_LEN = common dso_local global i32 0, align 4
@SIOCGIWENCODE = common dso_local global i32 0, align 4
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IWEVQUAL = common dso_local global i32 0, align 4
@IW_EV_QUAL_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @zd1201_get_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1201_get_scan(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.zd1201*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.iw_event, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call %struct.zd1201* @netdev_priv(%struct.net_device* %18)
  store %struct.zd1201* %19, %struct.zd1201** %10, align 8
  %20 = load i8*, i8** %9, align 8
  store i8* %20, i8** %16, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* @IW_SCAN_MAX_DATA, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8* %24, i8** %17, align 8
  %25 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %26 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %328

32:                                               ; preds = %4
  %33 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %34 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %14, align 4
  %36 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %37 = call i32 @zd1201_enable(%struct.zd1201* %36)
  %38 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %39 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %41 = load i32, i32* @ZD1201_CMDCODE_INQUIRE, align 4
  %42 = load i64, i64* @ZD1201_INQ_SCANRESULTS, align 8
  %43 = call i32 @zd1201_docmd(%struct.zd1201* %40, i32 %41, i64 %42, i32 0, i32 0)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %5, align 4
  br label %328

48:                                               ; preds = %32
  %49 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %50 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %53 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @wait_event_interruptible(i32 %51, i64 %54)
  %56 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %57 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %48
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %328

63:                                               ; preds = %48
  %64 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %65 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @le16_to_cpu(i32 %68)
  %70 = load i64, i64* @ZD1201_INQ_SCANRESULTS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %328

75:                                               ; preds = %63
  store i32 8, i32* %12, align 4
  br label %76

76:                                               ; preds = %308, %75
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %79 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %311

82:                                               ; preds = %76
  %83 = load i32, i32* @SIOCGIWAP, align 4
  %84 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 1
  store i32 %83, i32* %84, align 8
  %85 = load i32, i32* @ARPHRD_ETHER, align 4
  %86 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %94 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = getelementptr inbounds i32, i32* %98, i64 6
  %100 = call i32 @memcpy(i32 %92, i32* %99, i32 6)
  %101 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %102 = load i8*, i8** %16, align 8
  %103 = load i8*, i8** %17, align 8
  %104 = load i32, i32* @IW_EV_ADDR_LEN, align 4
  %105 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %101, i8* %102, i8* %103, %struct.iw_event* %15, i32 %104)
  store i8* %105, i8** %16, align 8
  %106 = load i32, i32* @SIOCGIWESSID, align 4
  %107 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 1
  store i32 %106, i32* %107, align 8
  %108 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %109 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 16
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 8
  %119 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  store i32 1, i32* %121, align 4
  %122 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %123 = load i8*, i8** %16, align 8
  %124 = load i8*, i8** %17, align 8
  %125 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %126 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = getelementptr inbounds i32, i32* %130, i64 18
  %132 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %122, i8* %123, i8* %124, %struct.iw_event* %15, i32* %131)
  store i8* %132, i8** %16, align 8
  %133 = load i32, i32* @SIOCGIWMODE, align 4
  %134 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 1
  store i32 %133, i32* %134, align 8
  %135 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %136 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 14
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 1
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %82
  %146 = load i32, i32* @IW_MODE_MASTER, align 4
  %147 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  br label %153

149:                                              ; preds = %82
  %150 = load i32, i32* @IW_MODE_ADHOC, align 4
  %151 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %149, %145
  %154 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %155 = load i8*, i8** %16, align 8
  %156 = load i8*, i8** %17, align 8
  %157 = load i32, i32* @IW_EV_UINT_LEN, align 4
  %158 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %154, i8* %155, i8* %156, %struct.iw_event* %15, i32 %157)
  store i8* %158, i8** %16, align 8
  %159 = load i32, i32* @SIOCGIWFREQ, align 4
  %160 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 1
  store i32 %159, i32* %160, align 8
  %161 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %162 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, 0
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 8
  %172 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  store i64 0, i64* %174, align 8
  %175 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %176 = load i8*, i8** %16, align 8
  %177 = load i8*, i8** %17, align 8
  %178 = load i32, i32* @IW_EV_FREQ_LEN, align 4
  %179 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %175, i8* %176, i8* %177, %struct.iw_event* %15, i32 %178)
  store i8* %179, i8** %16, align 8
  %180 = load i32, i32* @SIOCGIWRATE, align 4
  %181 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 1
  store i32 %180, i32* %181, align 8
  %182 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 2
  store i64 0, i64* %184, align 8
  %185 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  store i64 0, i64* %187, align 8
  store i32 0, i32* %13, align 4
  br label %188

188:                                              ; preds = %225, %153
  %189 = load i32, i32* %13, align 4
  %190 = icmp slt i32 %189, 10
  br i1 %190, label %191, label %228

191:                                              ; preds = %188
  %192 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %193 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %12, align 4
  %196 = add nsw i32 %195, 50
  %197 = load i32, i32* %13, align 4
  %198 = add nsw i32 %196, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %194, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %224

203:                                              ; preds = %191
  %204 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %205 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %12, align 4
  %208 = add nsw i32 %207, 50
  %209 = load i32, i32* %13, align 4
  %210 = add nsw i32 %208, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %206, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = and i32 %213, 127
  %215 = mul nsw i32 %214, 500000
  %216 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  store i32 %215, i32* %218, align 8
  %219 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %220 = load i8*, i8** %16, align 8
  %221 = load i8*, i8** %17, align 8
  %222 = load i32, i32* @IW_EV_PARAM_LEN, align 4
  %223 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %219, i8* %220, i8* %221, %struct.iw_event* %15, i32 %222)
  store i8* %223, i8** %16, align 8
  br label %224

224:                                              ; preds = %203, %191
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %13, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %13, align 4
  br label %188

228:                                              ; preds = %188
  %229 = load i32, i32* @SIOCGIWENCODE, align 4
  %230 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 1
  store i32 %229, i32* %230, align 8
  %231 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  store i32 0, i32* %233, align 8
  %234 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %235 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %12, align 4
  %238 = add nsw i32 %237, 14
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %236, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = and i32 %241, 16
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %228
  %245 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %246 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 1
  store i32 %245, i32* %248, align 4
  br label %254

249:                                              ; preds = %228
  %250 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %251 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 1
  store i32 %250, i32* %253, align 4
  br label %254

254:                                              ; preds = %249, %244
  %255 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %256 = load i8*, i8** %16, align 8
  %257 = load i8*, i8** %17, align 8
  %258 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %255, i8* %256, i8* %257, %struct.iw_event* %15, i32* null)
  store i8* %258, i8** %16, align 8
  %259 = load i32, i32* @IWEVQUAL, align 4
  %260 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 1
  store i32 %259, i32* %260, align 8
  %261 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %262 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %261, i32 0, i32 2
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %12, align 4
  %265 = add nsw i32 %264, 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 0
  store i32 %268, i32* %271, align 8
  %272 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %273 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %272, i32 0, i32 2
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %12, align 4
  %276 = add nsw i32 %275, 2
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %274, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = sdiv i32 %279, 10
  %281 = sub nsw i32 %280, 100
  %282 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 1
  store i32 %281, i32* %284, align 4
  %285 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %286 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %285, i32 0, i32 2
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %12, align 4
  %289 = add nsw i32 %288, 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %287, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = mul nsw i32 %292, 100
  %294 = add nsw i32 256, %293
  %295 = sdiv i32 %294, 255
  %296 = sub nsw i32 %295, 100
  %297 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 2
  store i32 %296, i32* %299, align 8
  %300 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %15, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 3
  store i32 7, i32* %302, align 4
  %303 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %304 = load i8*, i8** %16, align 8
  %305 = load i8*, i8** %17, align 8
  %306 = load i32, i32* @IW_EV_QUAL_LEN, align 4
  %307 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %303, i8* %304, i8* %305, %struct.iw_event* %15, i32 %306)
  store i8* %307, i8** %16, align 8
  br label %308

308:                                              ; preds = %254
  %309 = load i32, i32* %12, align 4
  %310 = add nsw i32 %309, 62
  store i32 %310, i32* %12, align 4
  br label %76

311:                                              ; preds = %76
  %312 = load i32, i32* %14, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %317, label %314

314:                                              ; preds = %311
  %315 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %316 = call i32 @zd1201_disable(%struct.zd1201* %315)
  br label %317

317:                                              ; preds = %314, %311
  %318 = load i8*, i8** %16, align 8
  %319 = load i8*, i8** %9, align 8
  %320 = ptrtoint i8* %318 to i64
  %321 = ptrtoint i8* %319 to i64
  %322 = sub i64 %320, %321
  %323 = trunc i64 %322 to i32
  %324 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %325 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %324, i32 0, i32 0
  store i32 %323, i32* %325, align 8
  %326 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %327 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %326, i32 0, i32 1
  store i64 0, i64* %327, align 8
  store i32 0, i32* %5, align 4
  br label %328

328:                                              ; preds = %317, %72, %60, %46, %29
  %329 = load i32, i32* %5, align 4
  ret i32 %329
}

declare dso_local %struct.zd1201* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @zd1201_enable(%struct.zd1201*) #1

declare dso_local i32 @zd1201_docmd(%struct.zd1201*, i32, i64, i32, i32) #1

declare dso_local i32 @wait_event_interruptible(i32, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i8* @iwe_stream_add_event(%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, i32) #1

declare dso_local i8* @iwe_stream_add_point(%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, i32*) #1

declare dso_local i32 @zd1201_disable(%struct.zd1201*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
