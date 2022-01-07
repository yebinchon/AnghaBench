; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixb.c_setexposure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixb.c_setexposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i32, i32 }

@__const.setexposure.i2c = private unnamed_addr constant [8 x i32] [i32 192, i32 17, i32 37, i32 0, i32 0, i32 0, i32 0, i32 23], align 16
@__const.setexposure.i2c.1 = private unnamed_addr constant [8 x i32] [i32 176, i32 0, i32 16, i32 0, i32 0, i32 0, i32 0, i32 16], align 16
@sensor_data = common dso_local global %struct.TYPE_2__* null, align 8
@__const.setexposure.i2cpframerate = private unnamed_addr constant [8 x i32] [i32 176, i32 64, i32 4, i32 0, i32 0, i32 0, i32 0, i32 22], align 16
@__const.setexposure.i2cpexpo = private unnamed_addr constant [8 x i32] [i32 160, i32 64, i32 15, i32 0, i32 0, i32 0, i32 0, i32 22], align 16
@__const.setexposure.i2cpdoit = private unnamed_addr constant [8 x i32] [i32 160, i32 64, i32 17, i32 1, i32 0, i32 0, i32 0, i32 22], align 16
@__const.setexposure.i2cpframerate.2 = private unnamed_addr constant [8 x i32] [i32 177, i32 64, i32 3, i32 0, i32 0, i32 0, i32 0, i32 20], align 16
@__const.setexposure.i2cpexpo.3 = private unnamed_addr constant [8 x i32] [i32 161, i32 64, i32 5, i32 0, i32 0, i32 0, i32 0, i32 20], align 16
@__const.setexposure.i2cpdoit.4 = private unnamed_addr constant [8 x i32] [i32 161, i32 64, i32 19, i32 1, i32 0, i32 0, i32 0, i32 20], align 16
@D_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"i2c error exposure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setexposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setexposure(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca [8 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x i32], align 16
  %12 = alloca [8 x i32], align 16
  %13 = alloca [8 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca [8 x i32], align 16
  %16 = alloca [8 x i32], align 16
  %17 = alloca [8 x i32], align 16
  %18 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = bitcast %struct.gspca_dev* %19 to %struct.sd*
  store %struct.sd* %20, %struct.sd** %3, align 8
  %21 = load %struct.sd*, %struct.sd** %3, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %240 [
    i32 134, label %24
    i32 129, label %42
    i32 128, label %42
    i32 133, label %51
    i32 132, label %51
    i32 130, label %144
    i32 131, label %193
  ]

24:                                               ; preds = %1
  %25 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 16 bitcast ([8 x i32]* @__const.setexposure.i2c to i8*), i64 32, i1 false)
  %26 = load %struct.sd*, %struct.sd** %3, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 6
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 8
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 255
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4
  store i32 %34, i32* %35, align 16
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %38 = call i32 @i2c_w(%struct.gspca_dev* %36, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %24
  br label %241

41:                                               ; preds = %24
  br label %240

42:                                               ; preds = %1, %1
  %43 = load %struct.sd*, %struct.sd** %3, align 8
  %44 = getelementptr inbounds %struct.sd, %struct.sd* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 %46, 4
  %48 = or i32 %47, 11
  store i32 %48, i32* %6, align 4
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = call i32 @reg_w(%struct.gspca_dev* %49, i32 25, i32* %6, i32 1)
  br label %240

51:                                               ; preds = %1, %1
  %52 = bitcast [8 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %52, i8* align 16 bitcast ([8 x i32]* @__const.setexposure.i2c.1 to i8*), i64 32, i1 false)
  %53 = load %struct.sd*, %struct.sd** %3, align 8
  %54 = getelementptr inbounds %struct.sd, %struct.sd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 133
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  store i32 77, i32* %10, align 4
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 4
  store i32 192, i32* %58, align 16
  br label %60

59:                                               ; preds = %51
  store i32 65, i32* %10, align 4
  br label %60

60:                                               ; preds = %59, %57
  %61 = load %struct.sd*, %struct.sd** %3, align 8
  %62 = getelementptr inbounds %struct.sd, %struct.sd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 15, %63
  %65 = add nsw i32 %64, 999
  %66 = sdiv i32 %65, 1000
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 1, i32* %9, align 4
  br label %75

70:                                               ; preds = %60
  %71 = load i32, i32* %9, align 4
  %72 = icmp sgt i32 %71, 16
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 16, i32* %9, align 4
  br label %74

74:                                               ; preds = %73, %70
  br label %75

75:                                               ; preds = %74, %69
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %77 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 640
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 4
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 4, i32* %9, align 4
  br label %84

84:                                               ; preds = %83, %80, %75
  %85 = load %struct.sd*, %struct.sd** %3, align 8
  %86 = getelementptr inbounds %struct.sd, %struct.sd* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %87, 15
  %89 = load i32, i32* %10, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32, i32* %9, align 4
  %92 = mul nsw i32 1000, %91
  %93 = sdiv i32 %90, %92
  store i32 %93, i32* %8, align 4
  %94 = load %struct.sd*, %struct.sd** %3, align 8
  %95 = getelementptr inbounds %struct.sd, %struct.sd* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %84
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %99, 10
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 10, i32* %8, align 4
  br label %109

102:                                              ; preds = %98, %84
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %106, %102
  br label %109

109:                                              ; preds = %108, %101
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sensor_data, align 8
  %111 = load %struct.sd*, %struct.sd** %3, align 8
  %112 = getelementptr inbounds %struct.sd, %struct.sd* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 1
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* %8, align 4
  %120 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* %9, align 4
  %122 = sub nsw i32 %121, 1
  %123 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 4
  %124 = load i32, i32* %123, align 16
  %125 = or i32 %124, %122
  store i32 %125, i32* %123, align 16
  %126 = load %struct.sd*, %struct.sd** %3, align 8
  %127 = getelementptr inbounds %struct.sd, %struct.sd* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %109
  %132 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  store i32 160, i32* %132, align 16
  br label %133

133:                                              ; preds = %131, %109
  %134 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %135 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %136 = call i32 @i2c_w(%struct.gspca_dev* %134, i32* %135)
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.sd*, %struct.sd** %3, align 8
  %141 = getelementptr inbounds %struct.sd, %struct.sd* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 4
  br label %143

142:                                              ; preds = %133
  br label %241

143:                                              ; preds = %138
  br label %240

144:                                              ; preds = %1
  %145 = bitcast [8 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %145, i8* align 16 bitcast ([8 x i32]* @__const.setexposure.i2cpframerate to i8*), i64 32, i1 false)
  %146 = bitcast [8 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %146, i8* align 16 bitcast ([8 x i32]* @__const.setexposure.i2cpexpo to i8*), i64 32, i1 false)
  %147 = bitcast [8 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %147, i8* align 16 bitcast ([8 x i32]* @__const.setexposure.i2cpdoit to i8*), i64 32, i1 false)
  %148 = load %struct.sd*, %struct.sd** %3, align 8
  %149 = getelementptr inbounds %struct.sd, %struct.sd* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %150, 200
  br i1 %151, label %152, label %160

152:                                              ; preds = %144
  %153 = load %struct.sd*, %struct.sd** %3, align 8
  %154 = getelementptr inbounds %struct.sd, %struct.sd* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 %155, 255
  %157 = sdiv i32 %156, 200
  %158 = sub nsw i32 255, %157
  %159 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 3
  store i32 %158, i32* %159, align 4
  store i32 500, i32* %14, align 4
  br label %168

160:                                              ; preds = %144
  %161 = load %struct.sd*, %struct.sd** %3, align 8
  %162 = getelementptr inbounds %struct.sd, %struct.sd* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %163, 200
  %165 = mul nsw i32 %164, 1000
  %166 = sdiv i32 %165, 229
  %167 = add nsw i32 %166, 500
  store i32 %167, i32* %14, align 4
  br label %168

168:                                              ; preds = %160, %152
  %169 = load i32, i32* %14, align 4
  %170 = ashr i32 %169, 6
  %171 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 3
  store i32 %170, i32* %171, align 4
  %172 = load i32, i32* %14, align 4
  %173 = and i32 %172, 63
  %174 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 4
  store i32 %173, i32* %174, align 16
  %175 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %176 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %177 = call i32 @i2c_w(%struct.gspca_dev* %175, i32* %176)
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %168
  br label %241

180:                                              ; preds = %168
  %181 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %182 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %183 = call i32 @i2c_w(%struct.gspca_dev* %181, i32* %182)
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  br label %241

186:                                              ; preds = %180
  %187 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %188 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %189 = call i32 @i2c_w(%struct.gspca_dev* %187, i32* %188)
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  br label %241

192:                                              ; preds = %186
  br label %240

193:                                              ; preds = %1
  %194 = bitcast [8 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %194, i8* align 16 bitcast ([8 x i32]* @__const.setexposure.i2cpframerate.2 to i8*), i64 32, i1 false)
  %195 = bitcast [8 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %195, i8* align 16 bitcast ([8 x i32]* @__const.setexposure.i2cpexpo.3 to i8*), i64 32, i1 false)
  %196 = bitcast [8 x i32]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %196, i8* align 16 bitcast ([8 x i32]* @__const.setexposure.i2cpdoit.4 to i8*), i64 32, i1 false)
  %197 = load %struct.sd*, %struct.sd** %3, align 8
  %198 = getelementptr inbounds %struct.sd, %struct.sd* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %199, 150
  br i1 %200, label %201, label %207

201:                                              ; preds = %193
  %202 = load %struct.sd*, %struct.sd** %3, align 8
  %203 = getelementptr inbounds %struct.sd, %struct.sd* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = sub nsw i32 150, %204
  %206 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 3
  store i32 %205, i32* %206, align 4
  store i32 300, i32* %18, align 4
  br label %215

207:                                              ; preds = %193
  %208 = load %struct.sd*, %struct.sd** %3, align 8
  %209 = getelementptr inbounds %struct.sd, %struct.sd* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = sub nsw i32 %210, 150
  %212 = mul nsw i32 %211, 1000
  %213 = sdiv i32 %212, 230
  %214 = add nsw i32 %213, 300
  store i32 %214, i32* %18, align 4
  br label %215

215:                                              ; preds = %207, %201
  %216 = load i32, i32* %18, align 4
  %217 = ashr i32 %216, 4
  %218 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 3
  store i32 %217, i32* %218, align 4
  %219 = load i32, i32* %18, align 4
  %220 = and i32 %219, 15
  %221 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 4
  store i32 %220, i32* %221, align 16
  %222 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %223 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %224 = call i32 @i2c_w(%struct.gspca_dev* %222, i32* %223)
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %215
  br label %241

227:                                              ; preds = %215
  %228 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %229 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %230 = call i32 @i2c_w(%struct.gspca_dev* %228, i32* %229)
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %227
  br label %241

233:                                              ; preds = %227
  %234 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %235 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 0
  %236 = call i32 @i2c_w(%struct.gspca_dev* %234, i32* %235)
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  br label %241

239:                                              ; preds = %233
  br label %240

240:                                              ; preds = %1, %239, %192, %143, %42, %41
  br label %244

241:                                              ; preds = %238, %232, %226, %191, %185, %179, %142, %40
  %242 = load i32, i32* @D_ERR, align 4
  %243 = call i32 @PDEBUG(i32 %242, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %244

244:                                              ; preds = %241, %240
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @i2c_w(%struct.gspca_dev*, i32*) #2

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #2

declare dso_local i32 @PDEBUG(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
