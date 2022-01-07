; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_get_encodeext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_get_encodeext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i32, i64, %struct.enc_key, %struct.enc_key, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.enc_key = type { i32, i32, i64, i32* }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32* }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i32 }
%struct.iw_encode_ext = type { i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@LBS_DEB_WEXT = common dso_local global i32 0, align 4
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_GROUP_KEY = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_WEP = common dso_local global i64 0, align 8
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@IW_ENCODE_ALG_NONE = common dso_local global i64 0, align 8
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@KEY_INFO_WPA_ENABLED = common dso_local global i32 0, align 4
@KEY_TYPE_ID_AES = common dso_local global i64 0, align 8
@IW_ENCODE_ALG_CCMP = common dso_local global i64 0, align 8
@IW_ENCODE_ALG_TKIP = common dso_local global i8* null, align 8
@E2BIG = common dso_local global i32 0, align 4
@IW_ENCODE_NOKEY = common dso_local global i32 0, align 4
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @lbs_get_encodeext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_get_encodeext(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_point*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lbs_private*, align 8
  %11 = alloca %struct.iw_encode_ext*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.enc_key*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_point* %2, %struct.iw_point** %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load %struct.lbs_private*, %struct.lbs_private** %19, align 8
  store %struct.lbs_private* %20, %struct.lbs_private** %10, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %22, %struct.iw_encode_ext** %11, align 8
  %23 = load i32, i32* @LBS_DEB_WEXT, align 4
  %24 = call i32 @lbs_deb_enter(i32 %23)
  %25 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %26 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 %28, 24
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %283

34:                                               ; preds = %4
  %35 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %36 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %34
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %12, align 4
  %47 = icmp sgt i32 %46, 4
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %42
  br label %283

49:                                               ; preds = %45
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %12, align 4
  br label %56

52:                                               ; preds = %34
  %53 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %54 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %52, %49
  %57 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %58 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @IW_ENCODE_EXT_GROUP_KEY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %80, label %63

63:                                               ; preds = %56
  %64 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %65 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IW_ENCODE_ALG_WEP, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %74 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @IW_MODE_INFRA, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72, %69
  br label %283

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %63, %56
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  %83 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %84 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %86 = call i32 @memset(%struct.iw_encode_ext* %85, i32 0, i32 24)
  %87 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %88 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %115, label %92

92:                                               ; preds = %80
  %93 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %94 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %115, label %98

98:                                               ; preds = %92
  %99 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %100 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %115, label %104

104:                                              ; preds = %98
  %105 = load i64, i64* @IW_ENCODE_ALG_NONE, align 8
  %106 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %107 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %109 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %108, i32 0, i32 2
  store i32 0, i32* %109, align 8
  %110 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %111 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %112 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %282

115:                                              ; preds = %98, %92, %80
  store i32* null, i32** %14, align 8
  %116 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %117 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %156

121:                                              ; preds = %115
  %122 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %123 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %156, label %127

127:                                              ; preds = %121
  %128 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %129 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %156, label %133

133:                                              ; preds = %127
  %134 = load i64, i64* @IW_ENCODE_ALG_WEP, align 8
  %135 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %136 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %135, i32 0, i32 1
  store i64 %134, i64* %136, align 8
  %137 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %138 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %137, i32 0, i32 5
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %146 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  %147 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %148 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %147, i32 0, i32 5
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  store i32* %155, i32** %14, align 8
  br label %247

156:                                              ; preds = %127, %121, %115
  %157 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %158 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %245, label %162

162:                                              ; preds = %156
  %163 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %164 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %162
  %169 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %170 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %245

174:                                              ; preds = %168, %162
  store %struct.enc_key* null, %struct.enc_key** %15, align 8
  %175 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %176 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %174
  %181 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %182 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @KEY_INFO_WPA_ENABLED, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %180
  %189 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %190 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %189, i32 0, i32 3
  store %struct.enc_key* %190, %struct.enc_key** %15, align 8
  br label %209

191:                                              ; preds = %180, %174
  %192 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %193 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %208

197:                                              ; preds = %191
  %198 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %199 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @KEY_INFO_WPA_ENABLED, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %197
  %206 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %207 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %206, i32 0, i32 2
  store %struct.enc_key* %207, %struct.enc_key** %15, align 8
  br label %208

208:                                              ; preds = %205, %197, %191
  br label %209

209:                                              ; preds = %208, %188
  %210 = load %struct.enc_key*, %struct.enc_key** %15, align 8
  %211 = icmp ne %struct.enc_key* %210, null
  br i1 %211, label %212, label %237

212:                                              ; preds = %209
  %213 = load %struct.enc_key*, %struct.enc_key** %15, align 8
  %214 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @KEY_TYPE_ID_AES, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %222

218:                                              ; preds = %212
  %219 = load i64, i64* @IW_ENCODE_ALG_CCMP, align 8
  %220 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %221 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %220, i32 0, i32 1
  store i64 %219, i64* %221, align 8
  br label %227

222:                                              ; preds = %212
  %223 = load i8*, i8** @IW_ENCODE_ALG_TKIP, align 8
  %224 = ptrtoint i8* %223 to i64
  %225 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %226 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %225, i32 0, i32 1
  store i64 %224, i64* %226, align 8
  br label %227

227:                                              ; preds = %222, %218
  %228 = load %struct.enc_key*, %struct.enc_key** %15, align 8
  %229 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %232 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %231, i32 0, i32 2
  store i32 %230, i32* %232, align 8
  %233 = load %struct.enc_key*, %struct.enc_key** %15, align 8
  %234 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %233, i32 0, i32 3
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 0
  store i32* %236, i32** %14, align 8
  br label %244

237:                                              ; preds = %209
  %238 = load i8*, i8** @IW_ENCODE_ALG_TKIP, align 8
  %239 = ptrtoint i8* %238 to i64
  %240 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %241 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %240, i32 0, i32 1
  store i64 %239, i64* %241, align 8
  %242 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %243 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %242, i32 0, i32 2
  store i32 0, i32* %243, align 8
  br label %244

244:                                              ; preds = %237, %227
  br label %246

245:                                              ; preds = %168, %156
  br label %283

246:                                              ; preds = %244
  br label %247

247:                                              ; preds = %246, %133
  %248 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %249 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* %13, align 4
  %252 = icmp sgt i32 %250, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %247
  %254 = load i32, i32* @E2BIG, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %9, align 4
  br label %283

256:                                              ; preds = %247
  %257 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %258 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %256
  %262 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %263 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = load i32*, i32** %14, align 8
  %266 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %267 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @memcpy(i32 %264, i32* %265, i32 %268)
  br label %276

270:                                              ; preds = %256
  %271 = load i32, i32* @IW_ENCODE_NOKEY, align 4
  %272 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %273 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 4
  br label %276

276:                                              ; preds = %270, %261
  %277 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %278 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %279 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = or i32 %280, %277
  store i32 %281, i32* %279, align 4
  br label %282

282:                                              ; preds = %276, %104
  store i32 0, i32* %9, align 4
  br label %283

283:                                              ; preds = %282, %253, %245, %78, %48, %33
  %284 = load i32, i32* @LBS_DEB_WEXT, align 4
  %285 = load i32, i32* %9, align 4
  %286 = call i32 @lbs_deb_leave_args(i32 %284, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %285)
  %287 = load i32, i32* %9, align 4
  ret i32 %287
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @memset(%struct.iw_encode_ext*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
