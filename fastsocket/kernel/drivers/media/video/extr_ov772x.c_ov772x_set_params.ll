; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov772x.c_ov772x_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov772x.c_ov772x_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.ov772x_priv = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__*, i64, i64, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ov772x_cfmts = common dso_local global %struct.TYPE_9__* null, align 8
@OV772X_MANUAL_EDGE_CTRL = common dso_local global i32 0, align 4
@DSPAUTO = common dso_local global i32 0, align 4
@EDGE_ACTRL = common dso_local global i32 0, align 4
@EDGE_TRSHLD = common dso_local global i32 0, align 4
@EDGE_THRESHOLD_MASK = common dso_local global i32 0, align 4
@EDGE_STRNGT = common dso_local global i32 0, align 4
@EDGE_STRENGTH_MASK = common dso_local global i32 0, align 4
@EDGE_UPPER = common dso_local global i32 0, align 4
@EDGE_UPPER_MASK = common dso_local global i32 0, align 4
@EDGE_LOWER = common dso_local global i32 0, align 4
@EDGE_LOWER_MASK = common dso_local global i32 0, align 4
@DSP_CTRL3 = common dso_local global i32 0, align 4
@UV_MASK = common dso_local global i32 0, align 4
@OV772X_FLAG_VFLIP = common dso_local global i32 0, align 4
@VFLIP_IMG = common dso_local global i32 0, align 4
@OV772X_FLAG_HFLIP = common dso_local global i32 0, align 4
@HFLIP_IMG = common dso_local global i32 0, align 4
@COM3 = common dso_local global i32 0, align 4
@SWAP_MASK = common dso_local global i32 0, align 4
@IMG_MASK = common dso_local global i32 0, align 4
@COM7 = common dso_local global i32 0, align 4
@SLCT_MASK = common dso_local global i32 0, align 4
@FMT_MASK = common dso_local global i32 0, align 4
@OFMT_MASK = common dso_local global i32 0, align 4
@COM8 = common dso_local global i32 0, align 4
@BNDF_ON_OFF = common dso_local global i32 0, align 4
@BDBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32*, i32*, i32)* @ov772x_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov772x_set_params(%struct.i2c_client* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ov772x_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %15 = call %struct.ov772x_priv* @to_ov772x(%struct.i2c_client* %14)
  store %struct.ov772x_priv* %15, %struct.ov772x_priv** %10, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  %18 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %19 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %18, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %19, align 8
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %42, %4
  %21 = load i32, i32* %13, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ov772x_cfmts, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ov772x_cfmts, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %26, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ov772x_cfmts, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i64 %37
  %39 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %40 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %39, i32 0, i32 1
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %40, align 8
  br label %45

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %13, align 4
  br label %20

45:                                               ; preds = %34, %20
  %46 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %47 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %46, i32 0, i32 1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = icmp ne %struct.TYPE_9__* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %303

51:                                               ; preds = %45
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.TYPE_8__* @ov772x_select_win(i32 %53, i32 %55)
  %57 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %58 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %57, i32 0, i32 2
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %58, align 8
  %59 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %60 = call i32 @ov772x_reset(%struct.i2c_client* %59)
  %61 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %62 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %61, i32 0, i32 5
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @OV772X_MANUAL_EDGE_CTRL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %107

70:                                               ; preds = %51
  %71 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %72 = load i32, i32* @DSPAUTO, align 4
  %73 = load i32, i32* @EDGE_ACTRL, align 4
  %74 = call i32 @ov772x_mask_set(%struct.i2c_client* %71, i32 %72, i32 %73, i32 0)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %303

78:                                               ; preds = %70
  %79 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %80 = load i32, i32* @EDGE_TRSHLD, align 4
  %81 = load i32, i32* @EDGE_THRESHOLD_MASK, align 4
  %82 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %83 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %82, i32 0, i32 5
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ov772x_mask_set(%struct.i2c_client* %79, i32 %80, i32 %81, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  br label %303

92:                                               ; preds = %78
  %93 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %94 = load i32, i32* @EDGE_STRNGT, align 4
  %95 = load i32, i32* @EDGE_STRENGTH_MASK, align 4
  %96 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %97 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %96, i32 0, i32 5
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ov772x_mask_set(%struct.i2c_client* %93, i32 %94, i32 %95, i32 %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %92
  br label %303

106:                                              ; preds = %92
  br label %151

107:                                              ; preds = %51
  %108 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %109 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %108, i32 0, i32 5
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %115 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %114, i32 0, i32 5
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = icmp sgt i32 %113, %119
  br i1 %120, label %121, label %150

121:                                              ; preds = %107
  %122 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %123 = load i32, i32* @EDGE_UPPER, align 4
  %124 = load i32, i32* @EDGE_UPPER_MASK, align 4
  %125 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %126 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %125, i32 0, i32 5
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ov772x_mask_set(%struct.i2c_client* %122, i32 %123, i32 %124, i32 %130)
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %121
  br label %303

135:                                              ; preds = %121
  %136 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %137 = load i32, i32* @EDGE_LOWER, align 4
  %138 = load i32, i32* @EDGE_LOWER_MASK, align 4
  %139 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %140 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %139, i32 0, i32 5
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @ov772x_mask_set(%struct.i2c_client* %136, i32 %137, i32 %138, i32 %144)
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %11, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %135
  br label %303

149:                                              ; preds = %135
  br label %150

150:                                              ; preds = %149, %107
  br label %151

151:                                              ; preds = %150, %106
  %152 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %153 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %154 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %153, i32 0, i32 2
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @ov772x_write_array(%struct.i2c_client* %152, i32 %157)
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %151
  br label %303

162:                                              ; preds = %151
  %163 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %164 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %163, i32 0, i32 1
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %12, align 4
  %168 = load i32, i32* %12, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %162
  %171 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %172 = load i32, i32* @DSP_CTRL3, align 4
  %173 = load i32, i32* @UV_MASK, align 4
  %174 = load i32, i32* %12, align 4
  %175 = call i32 @ov772x_mask_set(%struct.i2c_client* %171, i32 %172, i32 %173, i32 %174)
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %11, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %170
  br label %303

179:                                              ; preds = %170
  br label %180

180:                                              ; preds = %179, %162
  %181 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %182 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %181, i32 0, i32 1
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %12, align 4
  %186 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %187 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %186, i32 0, i32 5
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @OV772X_FLAG_VFLIP, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %180
  %195 = load i32, i32* @VFLIP_IMG, align 4
  %196 = load i32, i32* %12, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %12, align 4
  br label %198

198:                                              ; preds = %194, %180
  %199 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %200 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %199, i32 0, i32 5
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @OV772X_FLAG_HFLIP, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %198
  %208 = load i32, i32* @HFLIP_IMG, align 4
  %209 = load i32, i32* %12, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %12, align 4
  br label %211

211:                                              ; preds = %207, %198
  %212 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %213 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %211
  %217 = load i32, i32* @VFLIP_IMG, align 4
  %218 = load i32, i32* %12, align 4
  %219 = xor i32 %218, %217
  store i32 %219, i32* %12, align 4
  br label %220

220:                                              ; preds = %216, %211
  %221 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %222 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = load i32, i32* @HFLIP_IMG, align 4
  %227 = load i32, i32* %12, align 4
  %228 = xor i32 %227, %226
  store i32 %228, i32* %12, align 4
  br label %229

229:                                              ; preds = %225, %220
  %230 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %231 = load i32, i32* @COM3, align 4
  %232 = load i32, i32* @SWAP_MASK, align 4
  %233 = load i32, i32* @IMG_MASK, align 4
  %234 = or i32 %232, %233
  %235 = load i32, i32* %12, align 4
  %236 = call i32 @ov772x_mask_set(%struct.i2c_client* %230, i32 %231, i32 %234, i32 %235)
  store i32 %236, i32* %11, align 4
  %237 = load i32, i32* %11, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %229
  br label %303

240:                                              ; preds = %229
  %241 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %242 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %241, i32 0, i32 2
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %247 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %246, i32 0, i32 1
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = or i32 %245, %250
  store i32 %251, i32* %12, align 4
  %252 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %253 = load i32, i32* @COM7, align 4
  %254 = load i32, i32* @SLCT_MASK, align 4
  %255 = load i32, i32* @FMT_MASK, align 4
  %256 = or i32 %254, %255
  %257 = load i32, i32* @OFMT_MASK, align 4
  %258 = or i32 %256, %257
  %259 = load i32, i32* %12, align 4
  %260 = call i32 @ov772x_mask_set(%struct.i2c_client* %252, i32 %253, i32 %258, i32 %259)
  store i32 %260, i32* %11, align 4
  %261 = load i32, i32* %11, align 4
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %240
  br label %303

264:                                              ; preds = %240
  %265 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %266 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %289

269:                                              ; preds = %264
  %270 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %271 = load i32, i32* @COM8, align 4
  %272 = load i32, i32* @BNDF_ON_OFF, align 4
  %273 = call i32 @ov772x_mask_set(%struct.i2c_client* %270, i32 %271, i32 %272, i32 1)
  store i32 %273, i32* %11, align 4
  %274 = load i32, i32* %11, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %284, label %276

276:                                              ; preds = %269
  %277 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %278 = load i32, i32* @BDBASE, align 4
  %279 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %280 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = sub nsw i32 256, %281
  %283 = call i32 @ov772x_mask_set(%struct.i2c_client* %277, i32 %278, i32 255, i32 %282)
  store i32 %283, i32* %11, align 4
  br label %284

284:                                              ; preds = %276, %269
  %285 = load i32, i32* %11, align 4
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %284
  br label %303

288:                                              ; preds = %284
  br label %289

289:                                              ; preds = %288, %264
  %290 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %291 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %290, i32 0, i32 2
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = load i32*, i32** %7, align 8
  store i32 %294, i32* %295, align 4
  %296 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %297 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %296, i32 0, i32 2
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load i32*, i32** %8, align 8
  store i32 %300, i32* %301, align 4
  %302 = load i32, i32* %11, align 4
  store i32 %302, i32* %5, align 4
  br label %311

303:                                              ; preds = %287, %263, %239, %178, %161, %148, %134, %105, %91, %77, %50
  %304 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %305 = call i32 @ov772x_reset(%struct.i2c_client* %304)
  %306 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %307 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %306, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %307, align 8
  %308 = load %struct.ov772x_priv*, %struct.ov772x_priv** %10, align 8
  %309 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %308, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %309, align 8
  %310 = load i32, i32* %11, align 4
  store i32 %310, i32* %5, align 4
  br label %311

311:                                              ; preds = %303, %289
  %312 = load i32, i32* %5, align 4
  ret i32 %312
}

declare dso_local %struct.ov772x_priv* @to_ov772x(%struct.i2c_client*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_8__* @ov772x_select_win(i32, i32) #1

declare dso_local i32 @ov772x_reset(%struct.i2c_client*) #1

declare dso_local i32 @ov772x_mask_set(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @ov772x_write_array(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
