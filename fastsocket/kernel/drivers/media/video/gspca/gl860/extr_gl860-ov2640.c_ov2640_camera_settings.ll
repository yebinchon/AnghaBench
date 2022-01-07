; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/gl860/extr_gl860-ov2640.c_ov2640_camera_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/gl860/extr_gl860-ov2640.c_ov2640_camera_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@c28 = common dso_local global i32 0, align 4
@ca8 = common dso_local global i32 0, align 4
@c50 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @ov2640_camera_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2640_camera_settings(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = bitcast %struct.gspca_dev* %14 to %struct.sd*
  store %struct.sd* %15, %struct.sd** %3, align 8
  %16 = load %struct.sd*, %struct.sd** %3, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %4, align 4
  %20 = load %struct.sd*, %struct.sd** %3, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.sd*, %struct.sd** %3, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %6, align 4
  %28 = load %struct.sd*, %struct.sd** %3, align 8
  %29 = getelementptr inbounds %struct.sd, %struct.sd* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load %struct.sd*, %struct.sd** %3, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %8, align 4
  %36 = load %struct.sd*, %struct.sd** %3, align 8
  %37 = getelementptr inbounds %struct.sd, %struct.sd* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load %struct.sd*, %struct.sd** %3, align 8
  %41 = getelementptr inbounds %struct.sd, %struct.sd* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %10, align 4
  %44 = load %struct.sd*, %struct.sd** %3, align 8
  %45 = getelementptr inbounds %struct.sd, %struct.sd* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %11, align 4
  %48 = load %struct.sd*, %struct.sd** %3, align 8
  %49 = getelementptr inbounds %struct.sd, %struct.sd* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load %struct.sd*, %struct.sd** %3, align 8
  %55 = getelementptr inbounds %struct.sd, %struct.sd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = xor i32 %53, %56
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %12, align 4
  %60 = load %struct.sd*, %struct.sd** %3, align 8
  %61 = getelementptr inbounds %struct.sd, %struct.sd* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 9
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = load %struct.sd*, %struct.sd** %3, align 8
  %67 = getelementptr inbounds %struct.sd, %struct.sd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = xor i32 %65, %68
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.sd*, %struct.sd** %3, align 8
  %74 = getelementptr inbounds %struct.sd, %struct.sd* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %72, %76
  br i1 %77, label %78, label %101

78:                                               ; preds = %1
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.sd*, %struct.sd** %3, align 8
  %84 = getelementptr inbounds %struct.sd, %struct.sd* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %82, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %81, %78
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %81
  %90 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %91 = call i32 @ctrl_out(%struct.gspca_dev* %90, i32 64, i32 1, i32 24577, i32 255, i32 0, i32* null)
  %92 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 24606, %93
  %95 = call i32 @ctrl_out(%struct.gspca_dev* %92, i32 64, i32 1, i32 %94, i32 36, i32 0, i32* null)
  %96 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 24606, %97
  %99 = sub nsw i32 %98, 10
  %100 = call i32 @ctrl_out(%struct.gspca_dev* %96, i32 64, i32 1, i32 %99, i32 37, i32 0, i32* null)
  br label %101

101:                                              ; preds = %89, %1
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.sd*, %struct.sd** %3, align 8
  %104 = getelementptr inbounds %struct.sd, %struct.sd* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %102, %106
  br i1 %107, label %108, label %132

108:                                              ; preds = %101
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.sd*, %struct.sd** %3, align 8
  %111 = getelementptr inbounds %struct.sd, %struct.sd* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %108
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.sd*, %struct.sd** %3, align 8
  %118 = getelementptr inbounds %struct.sd, %struct.sd* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp sgt i32 %116, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %115, %108
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %115
  %124 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %125 = call i32 @ctrl_out(%struct.gspca_dev* %124, i32 64, i32 1, i32 24576, i32 255, i32 0, i32* null)
  %126 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %127 = call i32 @ctrl_out(%struct.gspca_dev* %126, i32 64, i32 1, i32 24585, i32 124, i32 0, i32* null)
  %128 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 24576, %129
  %131 = call i32 @ctrl_out(%struct.gspca_dev* %128, i32 64, i32 1, i32 %130, i32 125, i32 0, i32* null)
  br label %132

132:                                              ; preds = %123, %101
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.sd*, %struct.sd** %3, align 8
  %135 = getelementptr inbounds %struct.sd, %struct.sd* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %133, %137
  br i1 %138, label %139, label %163

139:                                              ; preds = %132
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.sd*, %struct.sd** %3, align 8
  %142 = getelementptr inbounds %struct.sd, %struct.sd* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  store i32 %140, i32* %143, align 8
  %144 = load i32, i32* %11, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %139
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.sd*, %struct.sd** %3, align 8
  %149 = getelementptr inbounds %struct.sd, %struct.sd* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = icmp sgt i32 %147, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %146, %139
  store i32 0, i32* %11, align 4
  br label %154

154:                                              ; preds = %153, %146
  %155 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %156 = call i32 @ctrl_out(%struct.gspca_dev* %155, i32 64, i32 1, i32 24576, i32 255, i32 0, i32* null)
  %157 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %158 = call i32 @ctrl_out(%struct.gspca_dev* %157, i32 64, i32 1, i32 24579, i32 124, i32 0, i32* null)
  %159 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 24576, %160
  %162 = call i32 @ctrl_out(%struct.gspca_dev* %159, i32 64, i32 1, i32 %161, i32 125, i32 0, i32* null)
  br label %163

163:                                              ; preds = %154, %132
  %164 = load i32, i32* %8, align 4
  %165 = load %struct.sd*, %struct.sd** %3, align 8
  %166 = getelementptr inbounds %struct.sd, %struct.sd* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %164, %168
  br i1 %169, label %170, label %194

170:                                              ; preds = %163
  %171 = load i32, i32* %8, align 4
  %172 = load %struct.sd*, %struct.sd** %3, align 8
  %173 = getelementptr inbounds %struct.sd, %struct.sd* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 3
  store i32 %171, i32* %174, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %170
  %178 = load i32, i32* %8, align 4
  %179 = load %struct.sd*, %struct.sd** %3, align 8
  %180 = getelementptr inbounds %struct.sd, %struct.sd* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = icmp sgt i32 %178, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %177, %170
  store i32 0, i32* %8, align 4
  br label %185

185:                                              ; preds = %184, %177
  %186 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %187 = call i32 @ctrl_out(%struct.gspca_dev* %186, i32 64, i32 1, i32 24576, i32 255, i32 0, i32* null)
  %188 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %189 = call i32 @ctrl_out(%struct.gspca_dev* %188, i32 64, i32 1, i32 24583, i32 124, i32 0, i32* null)
  %190 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 24576, %191
  %193 = call i32 @ctrl_out(%struct.gspca_dev* %190, i32 64, i32 1, i32 %192, i32 125, i32 0, i32* null)
  br label %194

194:                                              ; preds = %185, %163
  %195 = load i32, i32* %9, align 4
  %196 = load %struct.sd*, %struct.sd** %3, align 8
  %197 = getelementptr inbounds %struct.sd, %struct.sd* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %195, %199
  br i1 %200, label %201, label %225

201:                                              ; preds = %194
  %202 = load i32, i32* %9, align 4
  %203 = load %struct.sd*, %struct.sd** %3, align 8
  %204 = getelementptr inbounds %struct.sd, %struct.sd* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 4
  store i32 %202, i32* %205, align 8
  %206 = load i32, i32* %9, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %215, label %208

208:                                              ; preds = %201
  %209 = load i32, i32* %9, align 4
  %210 = load %struct.sd*, %struct.sd** %3, align 8
  %211 = getelementptr inbounds %struct.sd, %struct.sd* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = icmp sgt i32 %209, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %208, %201
  store i32 0, i32* %9, align 4
  br label %216

216:                                              ; preds = %215, %208
  %217 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %218 = call i32 @ctrl_out(%struct.gspca_dev* %217, i32 64, i32 1, i32 24576, i32 255, i32 0, i32* null)
  %219 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %220 = call i32 @ctrl_out(%struct.gspca_dev* %219, i32 64, i32 1, i32 24577, i32 124, i32 0, i32* null)
  %221 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %222 = load i32, i32* %9, align 4
  %223 = add nsw i32 24576, %222
  %224 = call i32 @ctrl_out(%struct.gspca_dev* %221, i32 64, i32 1, i32 %223, i32 125, i32 0, i32* null)
  br label %225

225:                                              ; preds = %216, %194
  %226 = load i32, i32* %6, align 4
  %227 = load %struct.sd*, %struct.sd** %3, align 8
  %228 = getelementptr inbounds %struct.sd, %struct.sd* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %226, %230
  br i1 %231, label %232, label %256

232:                                              ; preds = %225
  %233 = load i32, i32* %6, align 4
  %234 = load %struct.sd*, %struct.sd** %3, align 8
  %235 = getelementptr inbounds %struct.sd, %struct.sd* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 5
  store i32 %233, i32* %236, align 4
  %237 = load i32, i32* %6, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %246, label %239

239:                                              ; preds = %232
  %240 = load i32, i32* %6, align 4
  %241 = load %struct.sd*, %struct.sd** %3, align 8
  %242 = getelementptr inbounds %struct.sd, %struct.sd* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 4
  %245 = icmp sgt i32 %240, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %239, %232
  store i32 0, i32* %6, align 4
  br label %247

247:                                              ; preds = %246, %239
  %248 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %249 = call i32 @ctrl_out(%struct.gspca_dev* %248, i32 64, i32 1, i32 24576, i32 255, i32 0, i32* null)
  %250 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %251 = call i32 @ctrl_out(%struct.gspca_dev* %250, i32 64, i32 1, i32 24577, i32 146, i32 0, i32* null)
  %252 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %253 = load i32, i32* %6, align 4
  %254 = add nsw i32 24768, %253
  %255 = call i32 @ctrl_out(%struct.gspca_dev* %252, i32 64, i32 1, i32 %254, i32 147, i32 0, i32* null)
  br label %256

256:                                              ; preds = %247, %225
  %257 = load i32, i32* %10, align 4
  %258 = load %struct.sd*, %struct.sd** %3, align 8
  %259 = getelementptr inbounds %struct.sd, %struct.sd* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 8
  %262 = icmp ne i32 %257, %261
  br i1 %262, label %263, label %300

263:                                              ; preds = %256
  %264 = load i32, i32* %10, align 4
  %265 = load %struct.sd*, %struct.sd** %3, align 8
  %266 = getelementptr inbounds %struct.sd, %struct.sd* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 6
  store i32 %264, i32* %267, align 8
  %268 = load i32, i32* %10, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %277, label %270

270:                                              ; preds = %263
  %271 = load i32, i32* %10, align 4
  %272 = load %struct.sd*, %struct.sd** %3, align 8
  %273 = getelementptr inbounds %struct.sd, %struct.sd* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 6
  %275 = load i32, i32* %274, align 8
  %276 = icmp sgt i32 %271, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %270, %263
  store i32 0, i32* %10, align 4
  br label %278

278:                                              ; preds = %277, %270
  %279 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %280 = call i32 @ctrl_out(%struct.gspca_dev* %279, i32 64, i32 1, i32 24576, i32 255, i32 0, i32* null)
  %281 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %282 = call i32 @ctrl_out(%struct.gspca_dev* %281, i32 64, i32 1, i32 24578, i32 124, i32 0, i32* null)
  %283 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %284 = load i32, i32* %10, align 4
  %285 = load i32, i32* %10, align 4
  %286 = icmp slt i32 %285, 255
  %287 = zext i1 %286 to i32
  %288 = mul nsw i32 %284, %287
  %289 = add nsw i32 24576, %288
  %290 = call i32 @ctrl_out(%struct.gspca_dev* %283, i32 64, i32 1, i32 %289, i32 125, i32 0, i32* null)
  %291 = load i32, i32* %10, align 4
  %292 = icmp sge i32 %291, 255
  br i1 %292, label %293, label %296

293:                                              ; preds = %278
  %294 = load %struct.sd*, %struct.sd** %3, align 8
  %295 = getelementptr inbounds %struct.sd, %struct.sd* %294, i32 0, i32 1
  store i32 1, i32* %295, align 4
  br label %299

296:                                              ; preds = %278
  %297 = load %struct.sd*, %struct.sd** %3, align 8
  %298 = getelementptr inbounds %struct.sd, %struct.sd* %297, i32 0, i32 1
  store i32 0, i32* %298, align 4
  br label %299

299:                                              ; preds = %296, %293
  br label %300

300:                                              ; preds = %299, %256
  %301 = load i32, i32* %7, align 4
  %302 = load %struct.sd*, %struct.sd** %3, align 8
  %303 = getelementptr inbounds %struct.sd, %struct.sd* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 7
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %301, %305
  br i1 %306, label %307, label %331

307:                                              ; preds = %300
  %308 = load i32, i32* %7, align 4
  %309 = load %struct.sd*, %struct.sd** %3, align 8
  %310 = getelementptr inbounds %struct.sd, %struct.sd* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 7
  store i32 %308, i32* %311, align 4
  %312 = load i32, i32* %7, align 4
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %321, label %314

314:                                              ; preds = %307
  %315 = load i32, i32* %7, align 4
  %316 = load %struct.sd*, %struct.sd** %3, align 8
  %317 = getelementptr inbounds %struct.sd, %struct.sd* %316, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 7
  %319 = load i32, i32* %318, align 4
  %320 = icmp sgt i32 %315, %319
  br i1 %320, label %321, label %322

321:                                              ; preds = %314, %307
  store i32 0, i32* %7, align 4
  br label %322

322:                                              ; preds = %321, %314
  %323 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %324 = call i32 @ctrl_out(%struct.gspca_dev* %323, i32 64, i32 1, i32 24576, i32 255, i32 0, i32* null)
  %325 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %326 = call i32 @ctrl_out(%struct.gspca_dev* %325, i32 64, i32 1, i32 24584, i32 124, i32 0, i32* null)
  %327 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %328 = load i32, i32* %7, align 4
  %329 = add nsw i32 24576, %328
  %330 = call i32 @ctrl_out(%struct.gspca_dev* %327, i32 64, i32 1, i32 %329, i32 125, i32 0, i32* null)
  br label %331

331:                                              ; preds = %322, %300
  %332 = load i32, i32* %12, align 4
  %333 = load %struct.sd*, %struct.sd** %3, align 8
  %334 = getelementptr inbounds %struct.sd, %struct.sd* %333, i32 0, i32 2
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 8
  %336 = load i32, i32* %335, align 8
  %337 = icmp ne i32 %332, %336
  br i1 %337, label %345, label %338

338:                                              ; preds = %331
  %339 = load i32, i32* %13, align 4
  %340 = load %struct.sd*, %struct.sd** %3, align 8
  %341 = getelementptr inbounds %struct.sd, %struct.sd* %340, i32 0, i32 2
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 9
  %343 = load i32, i32* %342, align 4
  %344 = icmp ne i32 %339, %343
  br i1 %344, label %345, label %385

345:                                              ; preds = %338, %331
  %346 = load i32, i32* %12, align 4
  %347 = load %struct.sd*, %struct.sd** %3, align 8
  %348 = getelementptr inbounds %struct.sd, %struct.sd* %347, i32 0, i32 2
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 8
  store i32 %346, i32* %349, align 8
  %350 = load i32, i32* %13, align 4
  %351 = load %struct.sd*, %struct.sd** %3, align 8
  %352 = getelementptr inbounds %struct.sd, %struct.sd* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 9
  store i32 %350, i32* %353, align 4
  %354 = load i32, i32* %12, align 4
  %355 = mul nsw i32 128, %354
  store i32 %355, i32* %12, align 4
  %356 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %357 = call i32 @ctrl_out(%struct.gspca_dev* %356, i32 64, i32 1, i32 24577, i32 255, i32 0, i32* null)
  %358 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %359 = call i32 @ctrl_out(%struct.gspca_dev* %358, i32 64, i32 1, i32 24576, i32 32772, i32 0, i32* null)
  %360 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %361 = load i32, i32* @c28, align 4
  %362 = call i32 @ctrl_in(%struct.gspca_dev* %360, i32 192, i32 2, i32 24576, i32 32772, i32 1, i32 %361)
  %363 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %364 = load i32, i32* %12, align 4
  %365 = add nsw i32 24616, %364
  %366 = call i32 @ctrl_out(%struct.gspca_dev* %363, i32 64, i32 1, i32 %365, i32 4, i32 0, i32* null)
  %367 = load i32, i32* %13, align 4
  %368 = mul nsw i32 80, %367
  %369 = load i32, i32* %12, align 4
  %370 = add nsw i32 %368, %369
  store i32 %370, i32* %13, align 4
  %371 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %372 = call i32 @ctrl_out(%struct.gspca_dev* %371, i32 64, i32 1, i32 24577, i32 255, i32 0, i32* null)
  %373 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %374 = call i32 @ctrl_out(%struct.gspca_dev* %373, i32 64, i32 1, i32 24576, i32 32772, i32 0, i32* null)
  %375 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %376 = load i32, i32* @ca8, align 4
  %377 = call i32 @ctrl_in(%struct.gspca_dev* %375, i32 192, i32 2, i32 24576, i32 32772, i32 1, i32 %376)
  %378 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %379 = load i32, i32* %13, align 4
  %380 = add nsw i32 24616, %379
  %381 = call i32 @ctrl_out(%struct.gspca_dev* %378, i32 64, i32 1, i32 %380, i32 4, i32 0, i32* null)
  %382 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %383 = load i32, i32* @c50, align 4
  %384 = call i32 @ctrl_in(%struct.gspca_dev* %382, i32 192, i32 2, i32 0, i32 0, i32 1, i32 %383)
  br label %385

385:                                              ; preds = %345, %338
  %386 = load i32, i32* %4, align 4
  %387 = load %struct.sd*, %struct.sd** %3, align 8
  %388 = getelementptr inbounds %struct.sd, %struct.sd* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = icmp ne i32 %386, %390
  br i1 %391, label %392, label %408

392:                                              ; preds = %385
  %393 = load i32, i32* %4, align 4
  %394 = load %struct.sd*, %struct.sd** %3, align 8
  %395 = getelementptr inbounds %struct.sd, %struct.sd* %394, i32 0, i32 2
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 0
  store i32 %393, i32* %396, align 8
  %397 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %398 = call i32 @ctrl_out(%struct.gspca_dev* %397, i32 64, i32 1, i32 24577, i32 255, i32 0, i32* null)
  %399 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %400 = load i32, i32* %4, align 4
  %401 = add nsw i32 24606, %400
  %402 = call i32 @ctrl_out(%struct.gspca_dev* %399, i32 64, i32 1, i32 %401, i32 36, i32 0, i32* null)
  %403 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %404 = load i32, i32* %4, align 4
  %405 = add nsw i32 24606, %404
  %406 = sub nsw i32 %405, 10
  %407 = call i32 @ctrl_out(%struct.gspca_dev* %403, i32 64, i32 1, i32 %406, i32 37, i32 0, i32* null)
  br label %408

408:                                              ; preds = %392, %385
  ret i32 0
}

declare dso_local i32 @ctrl_out(%struct.gspca_dev*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ctrl_in(%struct.gspca_dev*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
