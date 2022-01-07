; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_set_encodeext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_set_encodeext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i32, i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i64 }
%struct.iw_encode_ext = type { i32, i32, i64, i32 }
%struct.assoc_request = type { i64, %struct.TYPE_2__, i32, %struct.enc_key, %struct.enc_key, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.enc_key = type { i32, i32, i64, i32 }

@LBS_DEB_WEXT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_NONE = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_WEP = common dso_local global i32 0, align 4
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_SET_TX_KEY = common dso_local global i32 0, align 4
@IW_ENCODE_RESTRICTED = common dso_local global i32 0, align 4
@IW_AUTH_ALG_SHARED_KEY = common dso_local global i32 0, align 4
@IW_ENCODE_OPEN = common dso_local global i32 0, align 4
@IW_AUTH_ALG_OPEN_SYSTEM = common dso_local global i32 0, align 4
@ASSOC_FLAG_SECINFO = common dso_local global i32 0, align 4
@ASSOC_FLAG_WEP_KEYS = common dso_local global i32 0, align 4
@ASSOC_FLAG_WEP_TX_KEYIDX = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_TKIP = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_CCMP = common dso_local global i32 0, align 4
@KEY_LEN_WPA_TKIP = common dso_local global i64 0, align 8
@KEY_LEN_WPA_AES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"invalid size %d for key of alg type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_GROUP_KEY = common dso_local global i32 0, align 4
@ASSOC_FLAG_WPA_MCAST_KEY = common dso_local global i32 0, align 4
@ASSOC_FLAG_WPA_UCAST_KEY = common dso_local global i32 0, align 4
@KEY_INFO_WPA_ENABLED = common dso_local global i32 0, align 4
@KEY_INFO_WPA_MCAST = common dso_local global i32 0, align 4
@KEY_INFO_WPA_UNICAST = common dso_local global i32 0, align 4
@KEY_TYPE_ID_TKIP = common dso_local global i32 0, align 4
@KEY_TYPE_ID_AES = common dso_local global i32 0, align 4
@CMD_ACT_MAC_WEP_ENABLE = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@IW_AUTH_KEY_MGMT_802_1X = common dso_local global i32 0, align 4
@IW_AUTH_KEY_MGMT_PSK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @lbs_set_encodeext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_set_encodeext(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_point*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lbs_private*, align 8
  %11 = alloca %struct.iw_encode_ext*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.assoc_request*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.enc_key*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_point* %2, %struct.iw_point** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load %struct.lbs_private*, %struct.lbs_private** %19, align 8
  store %struct.lbs_private* %20, %struct.lbs_private** %10, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %22, %struct.iw_encode_ext** %11, align 8
  %23 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %24 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* @LBS_DEB_WEXT, align 4
  %27 = call i32 @lbs_deb_enter(i32 %26)
  %28 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %29 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %32 = call %struct.assoc_request* @lbs_get_association_request(%struct.lbs_private* %31)
  store %struct.assoc_request* %32, %struct.assoc_request** %13, align 8
  %33 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %34 = icmp ne %struct.assoc_request* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %313

38:                                               ; preds = %4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @IW_ENCODE_ALG_NONE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %44 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42, %38
  %50 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %51 = call i32 @disable_wep(%struct.assoc_request* %50)
  %52 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %53 = call i32 @disable_wpa(%struct.assoc_request* %52)
  br label %312

54:                                               ; preds = %42
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @IW_ENCODE_ALG_WEP, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %155

58:                                               ; preds = %54
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %59 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %60 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %63 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %66 = and i32 %64, %65
  %67 = call i32 @validate_key_index(i32 %61, i32 %66, i32* %15, i32* %14)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %313

71:                                               ; preds = %58
  %72 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %73 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %71
  %78 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %79 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82, %77
  %86 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %87 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IW_ENCODE_EXT_SET_TX_KEY, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85, %82, %71
  store i32 1, i32* %16, align 4
  br label %93

93:                                               ; preds = %92, %85
  %94 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %95 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %96 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %99 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @lbs_set_wep_key(%struct.assoc_request* %94, i32 %97, i64 %100, i32 %101, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %93
  br label %313

107:                                              ; preds = %93
  %108 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %109 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = load i32, i32* @IW_AUTH_ALG_SHARED_KEY, align 4
  %116 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %117 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 3
  store i32 %115, i32* %118, align 4
  br label %132

119:                                              ; preds = %107
  %120 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %121 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load i32, i32* @IW_AUTH_ALG_OPEN_SYSTEM, align 4
  %128 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %129 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 3
  store i32 %127, i32* %130, align 4
  br label %131

131:                                              ; preds = %126, %119
  br label %132

132:                                              ; preds = %131, %114
  %133 = load i32, i32* @ASSOC_FLAG_SECINFO, align 4
  %134 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %135 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %134, i32 0, i32 2
  %136 = call i32 @set_bit(i32 %133, i32* %135)
  %137 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %138 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %132
  %142 = load i32, i32* @ASSOC_FLAG_WEP_KEYS, align 4
  %143 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %144 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %143, i32 0, i32 2
  %145 = call i32 @set_bit(i32 %142, i32* %144)
  br label %146

146:                                              ; preds = %141, %132
  %147 = load i32, i32* %16, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load i32, i32* @ASSOC_FLAG_WEP_TX_KEYIDX, align 4
  %151 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %152 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %151, i32 0, i32 2
  %153 = call i32 @set_bit(i32 %150, i32* %152)
  br label %154

154:                                              ; preds = %149, %146
  br label %311

155:                                              ; preds = %54
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* @IW_ENCODE_ALG_TKIP, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* @IW_ENCODE_ALG_CCMP, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %310

163:                                              ; preds = %159, %155
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @IW_ENCODE_ALG_TKIP, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %163
  %168 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %169 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @KEY_LEN_WPA_TKIP, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %183, label %173

173:                                              ; preds = %167, %163
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* @IW_ENCODE_ALG_CCMP, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %191

177:                                              ; preds = %173
  %178 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %179 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @KEY_LEN_WPA_AES, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %191

183:                                              ; preds = %177, %167
  %184 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %185 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* %12, align 4
  %188 = call i32 @lbs_deb_wext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %186, i32 %187)
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %9, align 4
  br label %313

191:                                              ; preds = %177, %173
  %192 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %193 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @IW_ENCODE_EXT_GROUP_KEY, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %191
  %199 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %200 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %199, i32 0, i32 4
  store %struct.enc_key* %200, %struct.enc_key** %17, align 8
  %201 = load i32, i32* @ASSOC_FLAG_WPA_MCAST_KEY, align 4
  %202 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %203 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %202, i32 0, i32 2
  %204 = call i32 @set_bit(i32 %201, i32* %203)
  br label %212

205:                                              ; preds = %191
  %206 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %207 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %206, i32 0, i32 3
  store %struct.enc_key* %207, %struct.enc_key** %17, align 8
  %208 = load i32, i32* @ASSOC_FLAG_WPA_UCAST_KEY, align 4
  %209 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %210 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %209, i32 0, i32 2
  %211 = call i32 @set_bit(i32 %208, i32* %210)
  br label %212

212:                                              ; preds = %205, %198
  %213 = load %struct.enc_key*, %struct.enc_key** %17, align 8
  %214 = call i32 @memset(%struct.enc_key* %213, i32 0, i32 24)
  %215 = load %struct.enc_key*, %struct.enc_key** %17, align 8
  %216 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %219 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %222 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @memcpy(i32 %217, i32 %220, i64 %223)
  %225 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %226 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.enc_key*, %struct.enc_key** %17, align 8
  %229 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %228, i32 0, i32 2
  store i64 %227, i64* %229, align 8
  %230 = load %struct.enc_key*, %struct.enc_key** %17, align 8
  %231 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %212
  %235 = load i32, i32* @KEY_INFO_WPA_ENABLED, align 4
  %236 = load %struct.enc_key*, %struct.enc_key** %17, align 8
  %237 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = or i32 %238, %235
  store i32 %239, i32* %237, align 4
  br label %240

240:                                              ; preds = %234, %212
  %241 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %242 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @IW_ENCODE_EXT_GROUP_KEY, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %240
  %248 = load i32, i32* @KEY_INFO_WPA_MCAST, align 4
  %249 = load %struct.enc_key*, %struct.enc_key** %17, align 8
  %250 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 4
  br label %259

253:                                              ; preds = %240
  %254 = load i32, i32* @KEY_INFO_WPA_UNICAST, align 4
  %255 = load %struct.enc_key*, %struct.enc_key** %17, align 8
  %256 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 4
  br label %259

259:                                              ; preds = %253, %247
  %260 = load i32, i32* %12, align 4
  %261 = load i32, i32* @IW_ENCODE_ALG_TKIP, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %259
  %264 = load i32, i32* @KEY_TYPE_ID_TKIP, align 4
  %265 = load %struct.enc_key*, %struct.enc_key** %17, align 8
  %266 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %265, i32 0, i32 0
  store i32 %264, i32* %266, align 8
  br label %276

267:                                              ; preds = %259
  %268 = load i32, i32* %12, align 4
  %269 = load i32, i32* @IW_ENCODE_ALG_CCMP, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %275

271:                                              ; preds = %267
  %272 = load i32, i32* @KEY_TYPE_ID_AES, align 4
  %273 = load %struct.enc_key*, %struct.enc_key** %17, align 8
  %274 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %273, i32 0, i32 0
  store i32 %272, i32* %274, align 8
  br label %275

275:                                              ; preds = %271, %267
  br label %276

276:                                              ; preds = %275, %263
  %277 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %278 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %299

282:                                              ; preds = %276
  %283 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %284 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %299

288:                                              ; preds = %282
  %289 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %290 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %290, i32 0, i32 0
  store i32 1, i32* %291, align 8
  %292 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %293 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 1
  store i32 1, i32* %294, align 4
  %295 = load i32, i32* @ASSOC_FLAG_SECINFO, align 4
  %296 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %297 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %296, i32 0, i32 2
  %298 = call i32 @set_bit(i32 %295, i32* %297)
  br label %299

299:                                              ; preds = %288, %282, %276
  %300 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %301 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @CMD_ACT_MAC_WEP_ENABLE, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %299
  %307 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %308 = call i32 @disable_wep(%struct.assoc_request* %307)
  br label %309

309:                                              ; preds = %306, %299
  br label %310

310:                                              ; preds = %309, %159
  br label %311

311:                                              ; preds = %310, %154
  br label %312

312:                                              ; preds = %311, %49
  br label %313

313:                                              ; preds = %312, %183, %106, %70, %35
  %314 = load i32, i32* %9, align 4
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %357

316:                                              ; preds = %313
  %317 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %318 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @IW_MODE_INFRA, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %322, label %353

322:                                              ; preds = %316
  %323 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %324 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @IW_AUTH_KEY_MGMT_802_1X, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %350, label %330

330:                                              ; preds = %322
  %331 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %332 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @IW_AUTH_KEY_MGMT_PSK, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %350, label %338

338:                                              ; preds = %330
  %339 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %340 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %350, label %344

344:                                              ; preds = %338
  %345 = load %struct.assoc_request*, %struct.assoc_request** %13, align 8
  %346 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %353

350:                                              ; preds = %344, %338, %330, %322
  %351 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %352 = call i32 @lbs_do_association_work(%struct.lbs_private* %351)
  br label %356

353:                                              ; preds = %344, %316
  %354 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %355 = call i32 @lbs_postpone_association_work(%struct.lbs_private* %354)
  br label %356

356:                                              ; preds = %353, %350
  br label %360

357:                                              ; preds = %313
  %358 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %359 = call i32 @lbs_cancel_association_work(%struct.lbs_private* %358)
  br label %360

360:                                              ; preds = %357, %356
  %361 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %362 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %361, i32 0, i32 1
  %363 = call i32 @mutex_unlock(i32* %362)
  %364 = load i32, i32* @LBS_DEB_WEXT, align 4
  %365 = load i32, i32* %9, align 4
  %366 = call i32 @lbs_deb_leave_args(i32 %364, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %365)
  %367 = load i32, i32* %9, align 4
  ret i32 %367
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.assoc_request* @lbs_get_association_request(%struct.lbs_private*) #1

declare dso_local i32 @disable_wep(%struct.assoc_request*) #1

declare dso_local i32 @disable_wpa(%struct.assoc_request*) #1

declare dso_local i32 @validate_key_index(i32, i32, i32*, i32*) #1

declare dso_local i32 @lbs_set_wep_key(%struct.assoc_request*, i32, i64, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @lbs_deb_wext(i8*, i64, i32) #1

declare dso_local i32 @memset(%struct.enc_key*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @lbs_do_association_work(%struct.lbs_private*) #1

declare dso_local i32 @lbs_postpone_association_work(%struct.lbs_private*) #1

declare dso_local i32 @lbs_cancel_association_work(%struct.lbs_private*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
