; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_wx.c_libipw_wx_set_encodeext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_wx.c_libipw_wx_set_encodeext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.libipw_device = type { i64, i32, i32 (i32, %struct.libipw_security*)*, %struct.TYPE_3__, i64, i64, i64, i32 }
%struct.libipw_security = type { i32, i32, i32, i32, i64*, i32, i32*, i32* }
%struct.TYPE_3__ = type { i32, %struct.lib80211_crypt_data** }
%struct.lib80211_crypt_data = type { i32*, %struct.lib80211_crypto_ops* }
%struct.lib80211_crypto_ops = type { i64 (i32, i64, i32, i32*)*, i32* (i32)*, i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32 }
%struct.iw_encode_ext = type { i32, i32, i64, i32, i32 }

@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@WEP_KEYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_GROUP_KEY = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@SEC_ENABLED = common dso_local global i32 0, align 4
@SEC_ENCRYPT = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_NONE = common dso_local global i32 0, align 4
@SEC_LEVEL_0 = common dso_local global i32 0, align 4
@SEC_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"WEP\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"lib80211_crypt_wep\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TKIP\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"lib80211_crypt_tkip\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"CCMP\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"lib80211_crypt_ccmp\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"%s: unknown crypto alg %d\0A\00", align 1
@dev = common dso_local global %struct.TYPE_4__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"%s: key setting failed\0A\00", align 1
@IW_ENCODE_EXT_SET_TX_KEY = common dso_local global i32 0, align 4
@SEC_ACTIVE_KEY = common dso_local global i32 0, align 4
@SEC_ALG_WEP = common dso_local global i32 0, align 4
@SEC_LEVEL_1 = common dso_local global i32 0, align 4
@SEC_ALG_TKIP = common dso_local global i32 0, align 4
@SEC_LEVEL_2 = common dso_local global i32 0, align 4
@SEC_ALG_CCMP = common dso_local global i32 0, align 4
@SEC_LEVEL_3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libipw_wx_set_encodeext(%struct.libipw_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.libipw_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iw_point*, align 8
  %11 = alloca %struct.iw_encode_ext*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.lib80211_crypto_ops*, align 8
  %19 = alloca %struct.lib80211_crypt_data**, align 8
  %20 = alloca %struct.libipw_security, align 8
  %21 = alloca %struct.lib80211_crypt_data*, align 8
  store %struct.libipw_device* %0, %struct.libipw_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %22 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %23 = bitcast %union.iwreq_data* %22 to %struct.iw_point*
  store %struct.iw_point* %23, %struct.iw_point** %10, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = bitcast i8* %24 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %25, %struct.iw_encode_ext** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %26 = bitcast %struct.libipw_security* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 48, i1 false)
  %27 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %28 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @WEP_KEYS, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %34
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %461

44:                                               ; preds = %37
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %13, align 4
  br label %52

47:                                               ; preds = %4
  %48 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %49 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %47, %44
  %53 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %54 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @IW_ENCODE_EXT_GROUP_KEY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %61 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %63, i64 %65
  store %struct.lib80211_crypt_data** %66, %struct.lib80211_crypt_data*** %19, align 8
  store i32 1, i32* %15, align 4
  br label %96

67:                                               ; preds = %52
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %72 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 128
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %461

78:                                               ; preds = %70, %67
  %79 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %80 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IW_MODE_INFRA, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %86 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %88, i64 %90
  store %struct.lib80211_crypt_data** %91, %struct.lib80211_crypt_data*** %19, align 8
  br label %95

92:                                               ; preds = %78
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %461

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95, %59
  %97 = load i32, i32* @SEC_ENABLED, align 4
  %98 = load i32, i32* @SEC_ENCRYPT, align 4
  %99 = or i32 %97, %98
  %100 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %20, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %99
  store i32 %102, i32* %100, align 8
  %103 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %104 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %96
  %110 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %111 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @IW_ENCODE_ALG_NONE, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %158

115:                                              ; preds = %109, %96
  %116 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %19, align 8
  %117 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %116, align 8
  %118 = icmp ne %struct.lib80211_crypt_data* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %121 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %120, i32 0, i32 3
  %122 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %19, align 8
  %123 = call i32 @lib80211_crypt_delayed_deinit(%struct.TYPE_3__* %121, %struct.lib80211_crypt_data** %122)
  br label %124

124:                                              ; preds = %119, %115
  store i32 0, i32* %12, align 4
  br label %125

125:                                              ; preds = %141, %124
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @WEP_KEYS, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %144

129:                                              ; preds = %125
  %130 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %131 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %133, i64 %135
  %137 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %136, align 8
  %138 = icmp ne %struct.lib80211_crypt_data* %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %129
  br label %144

140:                                              ; preds = %129
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  br label %125

144:                                              ; preds = %139, %125
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* @WEP_KEYS, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %20, i32 0, i32 1
  store i32 0, i32* %149, align 4
  %150 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %20, i32 0, i32 2
  store i32 0, i32* %150, align 8
  %151 = load i32, i32* @SEC_LEVEL_0, align 4
  %152 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %20, i32 0, i32 5
  store i32 %151, i32* %152, align 8
  %153 = load i32, i32* @SEC_LEVEL, align 4
  %154 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %20, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %153
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %148, %144
  br label %446

158:                                              ; preds = %109
  %159 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %20, i32 0, i32 1
  store i32 1, i32* %159, align 4
  %160 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %20, i32 0, i32 2
  store i32 1, i32* %160, align 8
  %161 = load i32, i32* %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %165 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %184, label %183

168:                                              ; preds = %158
  %169 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %170 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %169, i32 0, i32 6
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %184, label %173

173:                                              ; preds = %168
  %174 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %175 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %174, i32 0, i32 5
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %173
  %179 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %180 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %178, %163
  br label %329

184:                                              ; preds = %178, %173, %168, %163
  %185 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %186 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  switch i32 %187, label %191 [
    i32 128, label %188
    i32 129, label %189
    i32 130, label %190
  ]

188:                                              ; preds = %184
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %201

189:                                              ; preds = %184
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %17, align 8
  br label %201

190:                                              ; preds = %184
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8** %17, align 8
  br label %201

191:                                              ; preds = %184
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %196 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (i8*, i32, ...) @LIBIPW_DEBUG_WX(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %194, i32 %197)
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %14, align 4
  br label %446

201:                                              ; preds = %190, %189, %188
  %202 = load i8*, i8** %16, align 8
  %203 = call %struct.lib80211_crypto_ops* @lib80211_get_crypto_ops(i8* %202)
  store %struct.lib80211_crypto_ops* %203, %struct.lib80211_crypto_ops** %18, align 8
  %204 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %18, align 8
  %205 = icmp eq %struct.lib80211_crypto_ops* %204, null
  br i1 %205, label %206, label %211

206:                                              ; preds = %201
  %207 = load i8*, i8** %17, align 8
  %208 = call i32 @request_module(i8* %207)
  %209 = load i8*, i8** %16, align 8
  %210 = call %struct.lib80211_crypto_ops* @lib80211_get_crypto_ops(i8* %209)
  store %struct.lib80211_crypto_ops* %210, %struct.lib80211_crypto_ops** %18, align 8
  br label %211

211:                                              ; preds = %206, %201
  %212 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %18, align 8
  %213 = icmp eq %struct.lib80211_crypto_ops* %212, null
  br i1 %213, label %214, label %224

214:                                              ; preds = %211
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %219 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 (i8*, i32, ...) @LIBIPW_DEBUG_WX(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %217, i32 %220)
  %222 = load i32, i32* @EINVAL, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %14, align 4
  br label %446

224:                                              ; preds = %211
  %225 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %19, align 8
  %226 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %225, align 8
  %227 = icmp eq %struct.lib80211_crypt_data* %226, null
  br i1 %227, label %235, label %228

228:                                              ; preds = %224
  %229 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %19, align 8
  %230 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %229, align 8
  %231 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %230, i32 0, i32 1
  %232 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %231, align 8
  %233 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %18, align 8
  %234 = icmp ne %struct.lib80211_crypto_ops* %232, %233
  br i1 %234, label %235, label %286

235:                                              ; preds = %228, %224
  %236 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %237 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %236, i32 0, i32 3
  %238 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %19, align 8
  %239 = call i32 @lib80211_crypt_delayed_deinit(%struct.TYPE_3__* %237, %struct.lib80211_crypt_data** %238)
  %240 = load i32, i32* @GFP_KERNEL, align 4
  %241 = call %struct.lib80211_crypt_data* @kzalloc(i32 16, i32 %240)
  store %struct.lib80211_crypt_data* %241, %struct.lib80211_crypt_data** %21, align 8
  %242 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %21, align 8
  %243 = icmp eq %struct.lib80211_crypt_data* %242, null
  br i1 %243, label %244, label %247

244:                                              ; preds = %235
  %245 = load i32, i32* @ENOMEM, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %14, align 4
  br label %446

247:                                              ; preds = %235
  %248 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %18, align 8
  %249 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %21, align 8
  %250 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %249, i32 0, i32 1
  store %struct.lib80211_crypto_ops* %248, %struct.lib80211_crypto_ops** %250, align 8
  %251 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %21, align 8
  %252 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %251, i32 0, i32 1
  %253 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %252, align 8
  %254 = icmp ne %struct.lib80211_crypto_ops* %253, null
  br i1 %254, label %255, label %273

255:                                              ; preds = %247
  %256 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %21, align 8
  %257 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %256, i32 0, i32 1
  %258 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %257, align 8
  %259 = getelementptr inbounds %struct.lib80211_crypto_ops, %struct.lib80211_crypto_ops* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = call i64 @try_module_get(i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %273

263:                                              ; preds = %255
  %264 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %21, align 8
  %265 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %264, i32 0, i32 1
  %266 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %265, align 8
  %267 = getelementptr inbounds %struct.lib80211_crypto_ops, %struct.lib80211_crypto_ops* %266, i32 0, i32 1
  %268 = load i32* (i32)*, i32* (i32)** %267, align 8
  %269 = load i32, i32* %13, align 4
  %270 = call i32* %268(i32 %269)
  %271 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %21, align 8
  %272 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %271, i32 0, i32 0
  store i32* %270, i32** %272, align 8
  br label %273

273:                                              ; preds = %263, %255, %247
  %274 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %21, align 8
  %275 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = icmp eq i32* %276, null
  br i1 %277, label %278, label %283

278:                                              ; preds = %273
  %279 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %21, align 8
  %280 = call i32 @kfree(%struct.lib80211_crypt_data* %279)
  %281 = load i32, i32* @EINVAL, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %14, align 4
  br label %446

283:                                              ; preds = %273
  %284 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %21, align 8
  %285 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %19, align 8
  store %struct.lib80211_crypt_data* %284, %struct.lib80211_crypt_data** %285, align 8
  br label %286

286:                                              ; preds = %283, %228
  %287 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %288 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %287, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = icmp sgt i64 %289, 0
  br i1 %290, label %291, label %328

291:                                              ; preds = %286
  %292 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %19, align 8
  %293 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %292, align 8
  %294 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %293, i32 0, i32 1
  %295 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %294, align 8
  %296 = getelementptr inbounds %struct.lib80211_crypto_ops, %struct.lib80211_crypto_ops* %295, i32 0, i32 0
  %297 = load i64 (i32, i64, i32, i32*)*, i64 (i32, i64, i32, i32*)** %296, align 8
  %298 = icmp ne i64 (i32, i64, i32, i32*)* %297, null
  br i1 %298, label %299, label %328

299:                                              ; preds = %291
  %300 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %19, align 8
  %301 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %300, align 8
  %302 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %301, i32 0, i32 1
  %303 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %302, align 8
  %304 = getelementptr inbounds %struct.lib80211_crypto_ops, %struct.lib80211_crypto_ops* %303, i32 0, i32 0
  %305 = load i64 (i32, i64, i32, i32*)*, i64 (i32, i64, i32, i32*)** %304, align 8
  %306 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %307 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %310 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %309, i32 0, i32 2
  %311 = load i64, i64* %310, align 8
  %312 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %313 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %312, i32 0, i32 4
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %19, align 8
  %316 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %315, align 8
  %317 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = call i64 %305(i32 %308, i64 %311, i32 %314, i32* %318)
  %320 = icmp slt i64 %319, 0
  br i1 %320, label %321, label %328

321:                                              ; preds = %299
  %322 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev, align 8
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = call i32 (i8*, i32, ...) @LIBIPW_DEBUG_WX(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %324)
  %326 = load i32, i32* @EINVAL, align 4
  %327 = sub nsw i32 0, %326
  store i32 %327, i32* %14, align 4
  br label %446

328:                                              ; preds = %299, %291, %286
  br label %329

329:                                              ; preds = %328, %183
  %330 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %331 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @IW_ENCODE_EXT_SET_TX_KEY, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %347

336:                                              ; preds = %329
  %337 = load i32, i32* %13, align 4
  %338 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %339 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %338, i32 0, i32 3
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 0
  store i32 %337, i32* %340, align 8
  %341 = load i32, i32* %13, align 4
  %342 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %20, i32 0, i32 3
  store i32 %341, i32* %342, align 4
  %343 = load i32, i32* @SEC_ACTIVE_KEY, align 4
  %344 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %20, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = or i32 %345, %343
  store i32 %346, i32* %344, align 8
  br label %347

347:                                              ; preds = %336, %329
  %348 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %349 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* @IW_ENCODE_ALG_NONE, align 4
  %352 = icmp ne i32 %350, %351
  br i1 %352, label %353, label %445

353:                                              ; preds = %347
  %354 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %20, i32 0, i32 7
  %355 = load i32*, i32** %354, align 8
  %356 = load i32, i32* %13, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %361 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %364 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %363, i32 0, i32 2
  %365 = load i64, i64* %364, align 8
  %366 = call i32 @memcpy(i32 %359, i32 %362, i64 %365)
  %367 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %368 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %367, i32 0, i32 2
  %369 = load i64, i64* %368, align 8
  %370 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %20, i32 0, i32 4
  %371 = load i64*, i64** %370, align 8
  %372 = load i32, i32* %13, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i64, i64* %371, i64 %373
  store i64 %369, i64* %374, align 8
  %375 = load i32, i32* %13, align 4
  %376 = shl i32 1, %375
  %377 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %20, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = or i32 %378, %376
  store i32 %379, i32* %377, align 8
  %380 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %381 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = icmp eq i32 %382, 128
  br i1 %383, label %384, label %397

384:                                              ; preds = %353
  %385 = load i32, i32* @SEC_ALG_WEP, align 4
  %386 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %20, i32 0, i32 6
  %387 = load i32*, i32** %386, align 8
  %388 = load i32, i32* %13, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %387, i64 %389
  store i32 %385, i32* %390, align 4
  %391 = load i32, i32* @SEC_LEVEL, align 4
  %392 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %20, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = or i32 %393, %391
  store i32 %394, i32* %392, align 8
  %395 = load i32, i32* @SEC_LEVEL_1, align 4
  %396 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %20, i32 0, i32 5
  store i32 %395, i32* %396, align 8
  br label %435

397:                                              ; preds = %353
  %398 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %399 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = icmp eq i32 %400, 129
  br i1 %401, label %402, label %415

402:                                              ; preds = %397
  %403 = load i32, i32* @SEC_ALG_TKIP, align 4
  %404 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %20, i32 0, i32 6
  %405 = load i32*, i32** %404, align 8
  %406 = load i32, i32* %13, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %405, i64 %407
  store i32 %403, i32* %408, align 4
  %409 = load i32, i32* @SEC_LEVEL, align 4
  %410 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %20, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = or i32 %411, %409
  store i32 %412, i32* %410, align 8
  %413 = load i32, i32* @SEC_LEVEL_2, align 4
  %414 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %20, i32 0, i32 5
  store i32 %413, i32* %414, align 8
  br label %434

415:                                              ; preds = %397
  %416 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %417 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = icmp eq i32 %418, 130
  br i1 %419, label %420, label %433

420:                                              ; preds = %415
  %421 = load i32, i32* @SEC_ALG_CCMP, align 4
  %422 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %20, i32 0, i32 6
  %423 = load i32*, i32** %422, align 8
  %424 = load i32, i32* %13, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32, i32* %423, i64 %425
  store i32 %421, i32* %426, align 4
  %427 = load i32, i32* @SEC_LEVEL, align 4
  %428 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %20, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = or i32 %429, %427
  store i32 %430, i32* %428, align 8
  %431 = load i32, i32* @SEC_LEVEL_3, align 4
  %432 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %20, i32 0, i32 5
  store i32 %431, i32* %432, align 8
  br label %433

433:                                              ; preds = %420, %415
  br label %434

434:                                              ; preds = %433, %402
  br label %435

435:                                              ; preds = %434, %384
  %436 = load i32, i32* %15, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %444

438:                                              ; preds = %435
  %439 = load i32, i32* @SEC_LEVEL, align 4
  %440 = xor i32 %439, -1
  %441 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %20, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = and i32 %442, %440
  store i32 %443, i32* %441, align 8
  br label %444

444:                                              ; preds = %438, %435
  br label %445

445:                                              ; preds = %444, %347
  br label %446

446:                                              ; preds = %445, %321, %278, %244, %214, %191, %157
  %447 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %448 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %447, i32 0, i32 2
  %449 = load i32 (i32, %struct.libipw_security*)*, i32 (i32, %struct.libipw_security*)** %448, align 8
  %450 = icmp ne i32 (i32, %struct.libipw_security*)* %449, null
  br i1 %450, label %451, label %459

451:                                              ; preds = %446
  %452 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %453 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %452, i32 0, i32 2
  %454 = load i32 (i32, %struct.libipw_security*)*, i32 (i32, %struct.libipw_security*)** %453, align 8
  %455 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %456 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 8
  %458 = call i32 %454(i32 %457, %struct.libipw_security* %20)
  br label %459

459:                                              ; preds = %451, %446
  %460 = load i32, i32* %14, align 4
  store i32 %460, i32* %5, align 4
  br label %461

461:                                              ; preds = %459, %92, %75, %41
  %462 = load i32, i32* %5, align 4
  ret i32 %462
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lib80211_crypt_delayed_deinit(%struct.TYPE_3__*, %struct.lib80211_crypt_data**) #2

declare dso_local i32 @LIBIPW_DEBUG_WX(i8*, i32, ...) #2

declare dso_local %struct.lib80211_crypto_ops* @lib80211_get_crypto_ops(i8*) #2

declare dso_local i32 @request_module(i8*) #2

declare dso_local %struct.lib80211_crypt_data* @kzalloc(i32, i32) #2

declare dso_local i64 @try_module_get(i32) #2

declare dso_local i32 @kfree(%struct.lib80211_crypt_data*) #2

declare dso_local i32 @memcpy(i32, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
