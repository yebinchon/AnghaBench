; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/gl860/extr_gl860-mi1320.c_mi1320_camera_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/gl860/extr_gl860-mi1320.c_mi1320_camera_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@dat_wbalNL = common dso_local global i32* null, align 8
@dat_wbalLL = common dso_local global i32* null, align 8
@dat_wbalBL = common dso_local global i32* null, align 8
@tbl_bright = common dso_local global i32* null, align 8
@tbl_sat = common dso_local global i32* null, align 8
@tbl_backlight = common dso_local global i32* null, align 8
@__const.mi1320_camera_settings.dat_hvflip2 = private unnamed_addr constant [4 x i32] [i32 32, i32 1, i32 241, i32 0], align 16
@dat_hvflip1 = common dso_local global i32* null, align 8
@tbl_cntr1 = common dso_local global i32* null, align 8
@tbl_cntr2 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @mi1320_camera_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mi1320_camera_settings(%struct.gspca_dev* %0) #0 {
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
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [4 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = bitcast %struct.gspca_dev* %17 to %struct.sd*
  store %struct.sd* %18, %struct.sd** %3, align 8
  %19 = load %struct.sd*, %struct.sd** %3, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %4, align 4
  %23 = load %struct.sd*, %struct.sd** %3, align 8
  %24 = getelementptr inbounds %struct.sd, %struct.sd* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  %27 = load %struct.sd*, %struct.sd** %3, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %6, align 4
  %31 = load %struct.sd*, %struct.sd** %3, align 8
  %32 = getelementptr inbounds %struct.sd, %struct.sd* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load %struct.sd*, %struct.sd** %3, align 8
  %36 = getelementptr inbounds %struct.sd, %struct.sd* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %8, align 4
  %39 = load %struct.sd*, %struct.sd** %3, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load %struct.sd*, %struct.sd** %3, align 8
  %44 = getelementptr inbounds %struct.sd, %struct.sd* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %10, align 4
  %47 = load %struct.sd*, %struct.sd** %3, align 8
  %48 = getelementptr inbounds %struct.sd, %struct.sd* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %11, align 4
  %51 = load %struct.sd*, %struct.sd** %3, align 8
  %52 = getelementptr inbounds %struct.sd, %struct.sd* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = load %struct.sd*, %struct.sd** %3, align 8
  %58 = getelementptr inbounds %struct.sd, %struct.sd* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = xor i32 %56, %59
  %61 = icmp sgt i32 %60, 0
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %12, align 4
  %63 = load %struct.sd*, %struct.sd** %3, align 8
  %64 = getelementptr inbounds %struct.sd, %struct.sd* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 9
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = load %struct.sd*, %struct.sd** %3, align 8
  %70 = getelementptr inbounds %struct.sd, %struct.sd* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = xor i32 %68, %71
  %73 = icmp sgt i32 %72, 0
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %13, align 4
  %75 = load %struct.sd*, %struct.sd** %3, align 8
  %76 = getelementptr inbounds %struct.sd, %struct.sd* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 10
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %78, 0
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load %struct.sd*, %struct.sd** %3, align 8
  %83 = getelementptr inbounds %struct.sd, %struct.sd* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %81, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %1
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.sd*, %struct.sd** %3, align 8
  %90 = getelementptr inbounds %struct.sd, %struct.sd* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = load i32, i32* %14, align 4
  %93 = icmp eq i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = mul nsw i32 2, %94
  store i32 %95, i32* %14, align 4
  %96 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %97 = call i32 @ctrl_out(%struct.gspca_dev* %96, i32 64, i32 1, i32 47616, i32 240, i32 0, i32* null)
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %99 = call i32 @ctrl_out(%struct.gspca_dev* %98, i32 64, i32 1, i32 47618, i32 241, i32 0, i32* null)
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %101 = call i32 @ctrl_out(%struct.gspca_dev* %100, i32 64, i32 1, i32 47616, i32 91, i32 0, i32* null)
  %102 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 47617, %103
  %105 = call i32 @ctrl_out(%struct.gspca_dev* %102, i32 64, i32 1, i32 %104, i32 241, i32 0, i32* null)
  br label %106

106:                                              ; preds = %87, %1
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.sd*, %struct.sd** %3, align 8
  %109 = getelementptr inbounds %struct.sd, %struct.sd* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %107, %111
  br i1 %112, label %113, label %176

113:                                              ; preds = %106
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.sd*, %struct.sd** %3, align 8
  %116 = getelementptr inbounds %struct.sd, %struct.sd* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %113
  %121 = load i32, i32* %11, align 4
  %122 = load %struct.sd*, %struct.sd** %3, align 8
  %123 = getelementptr inbounds %struct.sd, %struct.sd* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp sgt i32 %121, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %120, %113
  store i32 0, i32* %11, align 4
  br label %128

128:                                              ; preds = %127, %120
  store i32 0, i32* %15, align 4
  br label %129

129:                                              ; preds = %172, %128
  %130 = load i32, i32* %15, align 4
  %131 = icmp slt i32 %130, 2
  br i1 %131, label %132, label %175

132:                                              ; preds = %129
  %133 = load i32, i32* %11, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %137 = call i32 @ctrl_out(%struct.gspca_dev* %136, i32 64, i32 1, i32 16, i32 16, i32 0, i32* null)
  %138 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %139 = call i32 @ctrl_out(%struct.gspca_dev* %138, i32 64, i32 1, i32 3, i32 193, i32 0, i32* null)
  %140 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %141 = call i32 @ctrl_out(%struct.gspca_dev* %140, i32 64, i32 1, i32 66, i32 194, i32 0, i32* null)
  %142 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %143 = load i32*, i32** @dat_wbalNL, align 8
  %144 = call i32 @ctrl_out(%struct.gspca_dev* %142, i32 64, i32 3, i32 47616, i32 512, i32 48, i32* %143)
  br label %145

145:                                              ; preds = %135, %132
  %146 = load i32, i32* %11, align 4
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %158

148:                                              ; preds = %145
  %149 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %150 = call i32 @ctrl_out(%struct.gspca_dev* %149, i32 64, i32 1, i32 16, i32 16, i32 0, i32* null)
  %151 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %152 = call i32 @ctrl_out(%struct.gspca_dev* %151, i32 64, i32 1, i32 4, i32 193, i32 0, i32* null)
  %153 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %154 = call i32 @ctrl_out(%struct.gspca_dev* %153, i32 64, i32 1, i32 67, i32 194, i32 0, i32* null)
  %155 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %156 = load i32*, i32** @dat_wbalLL, align 8
  %157 = call i32 @ctrl_out(%struct.gspca_dev* %155, i32 64, i32 3, i32 47616, i32 512, i32 48, i32* %156)
  br label %158

158:                                              ; preds = %148, %145
  %159 = load i32, i32* %11, align 4
  %160 = icmp eq i32 %159, 2
  br i1 %160, label %161, label %171

161:                                              ; preds = %158
  %162 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %163 = call i32 @ctrl_out(%struct.gspca_dev* %162, i32 64, i32 1, i32 16, i32 16, i32 0, i32* null)
  %164 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %165 = call i32 @ctrl_out(%struct.gspca_dev* %164, i32 64, i32 1, i32 3, i32 193, i32 0, i32* null)
  %166 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %167 = call i32 @ctrl_out(%struct.gspca_dev* %166, i32 64, i32 1, i32 66, i32 194, i32 0, i32* null)
  %168 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %169 = load i32*, i32** @dat_wbalBL, align 8
  %170 = call i32 @ctrl_out(%struct.gspca_dev* %168, i32 64, i32 3, i32 47616, i32 512, i32 44, i32* %169)
  br label %171

171:                                              ; preds = %161, %158
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %15, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %15, align 4
  br label %129

175:                                              ; preds = %129
  br label %176

176:                                              ; preds = %175, %106
  %177 = load i32, i32* %5, align 4
  %178 = load %struct.sd*, %struct.sd** %3, align 8
  %179 = getelementptr inbounds %struct.sd, %struct.sd* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %177, %181
  br i1 %182, label %183, label %216

183:                                              ; preds = %176
  %184 = load i32, i32* %5, align 4
  %185 = load %struct.sd*, %struct.sd** %3, align 8
  %186 = getelementptr inbounds %struct.sd, %struct.sd* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 2
  store i32 %184, i32* %187, align 8
  %188 = load i32, i32* %5, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %197, label %190

190:                                              ; preds = %183
  %191 = load i32, i32* %5, align 4
  %192 = load %struct.sd*, %struct.sd** %3, align 8
  %193 = getelementptr inbounds %struct.sd, %struct.sd* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp sgt i32 %191, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %190, %183
  store i32 0, i32* %5, align 4
  br label %198

198:                                              ; preds = %197, %190
  %199 = load i32*, i32** @tbl_bright, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %5, align 4
  %204 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %205 = call i32 @ctrl_out(%struct.gspca_dev* %204, i32 64, i32 1, i32 47616, i32 240, i32 0, i32* null)
  %206 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %207 = call i32 @ctrl_out(%struct.gspca_dev* %206, i32 64, i32 1, i32 47617, i32 241, i32 0, i32* null)
  %208 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %209 = load i32, i32* %5, align 4
  %210 = add nsw i32 47616, %209
  %211 = call i32 @ctrl_out(%struct.gspca_dev* %208, i32 64, i32 1, i32 %210, i32 52, i32 0, i32* null)
  %212 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %213 = load i32, i32* %5, align 4
  %214 = add nsw i32 47616, %213
  %215 = call i32 @ctrl_out(%struct.gspca_dev* %212, i32 64, i32 1, i32 %214, i32 241, i32 0, i32* null)
  br label %216

216:                                              ; preds = %198, %176
  %217 = load i32, i32* %10, align 4
  %218 = load %struct.sd*, %struct.sd** %3, align 8
  %219 = getelementptr inbounds %struct.sd, %struct.sd* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %217, %221
  br i1 %222, label %223, label %254

223:                                              ; preds = %216
  %224 = load i32, i32* %10, align 4
  %225 = load %struct.sd*, %struct.sd** %3, align 8
  %226 = getelementptr inbounds %struct.sd, %struct.sd* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 3
  store i32 %224, i32* %227, align 4
  %228 = load i32, i32* %10, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %237, label %230

230:                                              ; preds = %223
  %231 = load i32, i32* %10, align 4
  %232 = load %struct.sd*, %struct.sd** %3, align 8
  %233 = getelementptr inbounds %struct.sd, %struct.sd* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = icmp sgt i32 %231, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %230, %223
  store i32 0, i32* %10, align 4
  br label %238

238:                                              ; preds = %237, %230
  %239 = load i32*, i32** @tbl_sat, align 8
  %240 = load i32, i32* %10, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  store i32 %243, i32* %10, align 4
  %244 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %245 = call i32 @ctrl_out(%struct.gspca_dev* %244, i32 64, i32 1, i32 47616, i32 240, i32 0, i32* null)
  %246 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %247 = call i32 @ctrl_out(%struct.gspca_dev* %246, i32 64, i32 1, i32 47617, i32 241, i32 0, i32* null)
  %248 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %249 = call i32 @ctrl_out(%struct.gspca_dev* %248, i32 64, i32 1, i32 47616, i32 37, i32 0, i32* null)
  %250 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %251 = load i32, i32* %10, align 4
  %252 = add nsw i32 47616, %251
  %253 = call i32 @ctrl_out(%struct.gspca_dev* %250, i32 64, i32 1, i32 %252, i32 241, i32 0, i32* null)
  br label %254

254:                                              ; preds = %238, %216
  %255 = load i32, i32* %6, align 4
  %256 = load %struct.sd*, %struct.sd** %3, align 8
  %257 = getelementptr inbounds %struct.sd, %struct.sd* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = icmp ne i32 %255, %259
  br i1 %260, label %261, label %287

261:                                              ; preds = %254
  %262 = load i32, i32* %6, align 4
  %263 = load %struct.sd*, %struct.sd** %3, align 8
  %264 = getelementptr inbounds %struct.sd, %struct.sd* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 4
  store i32 %262, i32* %265, align 8
  %266 = load i32, i32* %6, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %275, label %268

268:                                              ; preds = %261
  %269 = load i32, i32* %6, align 4
  %270 = load %struct.sd*, %struct.sd** %3, align 8
  %271 = getelementptr inbounds %struct.sd, %struct.sd* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = icmp sgt i32 %269, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %268, %261
  store i32 0, i32* %6, align 4
  br label %276

276:                                              ; preds = %275, %268
  %277 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %278 = call i32 @ctrl_out(%struct.gspca_dev* %277, i32 64, i32 1, i32 47616, i32 240, i32 0, i32* null)
  %279 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %280 = call i32 @ctrl_out(%struct.gspca_dev* %279, i32 64, i32 1, i32 47617, i32 241, i32 0, i32* null)
  %281 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %282 = call i32 @ctrl_out(%struct.gspca_dev* %281, i32 64, i32 1, i32 47616, i32 5, i32 0, i32* null)
  %283 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %284 = load i32, i32* %6, align 4
  %285 = add nsw i32 47616, %284
  %286 = call i32 @ctrl_out(%struct.gspca_dev* %283, i32 64, i32 1, i32 %285, i32 241, i32 0, i32* null)
  br label %287

287:                                              ; preds = %276, %254
  %288 = load i32, i32* %9, align 4
  %289 = load %struct.sd*, %struct.sd** %3, align 8
  %290 = getelementptr inbounds %struct.sd, %struct.sd* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 4
  %293 = icmp ne i32 %288, %292
  br i1 %293, label %294, label %333

294:                                              ; preds = %287
  %295 = load i32, i32* %9, align 4
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %304, label %297

297:                                              ; preds = %294
  %298 = load i32, i32* %9, align 4
  %299 = load %struct.sd*, %struct.sd** %3, align 8
  %300 = getelementptr inbounds %struct.sd, %struct.sd* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 4
  %302 = load i32, i32* %301, align 8
  %303 = icmp sgt i32 %298, %302
  br i1 %303, label %304, label %305

304:                                              ; preds = %297, %294
  store i32 0, i32* %9, align 4
  br label %305

305:                                              ; preds = %304, %297
  %306 = load i32, i32* %9, align 4
  %307 = load %struct.sd*, %struct.sd** %3, align 8
  %308 = getelementptr inbounds %struct.sd, %struct.sd* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 4
  %310 = load i32, i32* %309, align 8
  %311 = icmp eq i32 %306, %310
  br i1 %311, label %312, label %315

312:                                              ; preds = %305
  %313 = load %struct.sd*, %struct.sd** %3, align 8
  %314 = getelementptr inbounds %struct.sd, %struct.sd* %313, i32 0, i32 1
  store i32 1, i32* %314, align 4
  br label %318

315:                                              ; preds = %305
  %316 = load %struct.sd*, %struct.sd** %3, align 8
  %317 = getelementptr inbounds %struct.sd, %struct.sd* %316, i32 0, i32 1
  store i32 0, i32* %317, align 4
  br label %318

318:                                              ; preds = %315, %312
  %319 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %320 = call i32 @ctrl_out(%struct.gspca_dev* %319, i32 64, i32 1, i32 47616, i32 240, i32 0, i32* null)
  %321 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %322 = call i32 @ctrl_out(%struct.gspca_dev* %321, i32 64, i32 1, i32 47617, i32 241, i32 0, i32* null)
  %323 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %324 = call i32 @ctrl_out(%struct.gspca_dev* %323, i32 64, i32 1, i32 47728, i32 226, i32 0, i32* null)
  %325 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %326 = load i32, i32* %9, align 4
  %327 = load i32, i32* %9, align 4
  %328 = icmp slt i32 %327, 6
  %329 = zext i1 %328 to i32
  %330 = mul nsw i32 %326, %329
  %331 = add nsw i32 47616, %330
  %332 = call i32 @ctrl_out(%struct.gspca_dev* %325, i32 64, i32 1, i32 %331, i32 241, i32 0, i32* null)
  br label %333

333:                                              ; preds = %318, %287
  %334 = load i32, i32* %4, align 4
  %335 = load %struct.sd*, %struct.sd** %3, align 8
  %336 = getelementptr inbounds %struct.sd, %struct.sd* %335, i32 0, i32 3
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %336, i32 0, i32 6
  %338 = load i32, i32* %337, align 8
  %339 = icmp ne i32 %334, %338
  br i1 %339, label %340, label %379

340:                                              ; preds = %333
  %341 = load i32, i32* %4, align 4
  %342 = load %struct.sd*, %struct.sd** %3, align 8
  %343 = getelementptr inbounds %struct.sd, %struct.sd* %342, i32 0, i32 3
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 6
  store i32 %341, i32* %344, align 8
  %345 = load i32, i32* %4, align 4
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %354, label %347

347:                                              ; preds = %340
  %348 = load i32, i32* %4, align 4
  %349 = load %struct.sd*, %struct.sd** %3, align 8
  %350 = getelementptr inbounds %struct.sd, %struct.sd* %349, i32 0, i32 2
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 5
  %352 = load i32, i32* %351, align 4
  %353 = icmp sgt i32 %348, %352
  br i1 %353, label %354, label %355

354:                                              ; preds = %347, %340
  store i32 0, i32* %4, align 4
  br label %355

355:                                              ; preds = %354, %347
  %356 = load i32*, i32** @tbl_backlight, align 8
  %357 = load i32, i32* %4, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  %360 = load i32, i32* %359, align 4
  store i32 %360, i32* %4, align 4
  store i32 0, i32* %15, align 4
  br label %361

361:                                              ; preds = %375, %355
  %362 = load i32, i32* %15, align 4
  %363 = icmp slt i32 %362, 2
  br i1 %363, label %364, label %378

364:                                              ; preds = %361
  %365 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %366 = call i32 @ctrl_out(%struct.gspca_dev* %365, i32 64, i32 1, i32 47616, i32 240, i32 0, i32* null)
  %367 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %368 = call i32 @ctrl_out(%struct.gspca_dev* %367, i32 64, i32 1, i32 47617, i32 241, i32 0, i32* null)
  %369 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %370 = call i32 @ctrl_out(%struct.gspca_dev* %369, i32 64, i32 1, i32 47732, i32 6, i32 0, i32* null)
  %371 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %372 = load i32, i32* %4, align 4
  %373 = add nsw i32 47744, %372
  %374 = call i32 @ctrl_out(%struct.gspca_dev* %371, i32 64, i32 1, i32 %373, i32 241, i32 0, i32* null)
  br label %375

375:                                              ; preds = %364
  %376 = load i32, i32* %15, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %15, align 4
  br label %361

378:                                              ; preds = %361
  br label %379

379:                                              ; preds = %378, %333
  %380 = load i32, i32* %9, align 4
  %381 = load %struct.sd*, %struct.sd** %3, align 8
  %382 = getelementptr inbounds %struct.sd, %struct.sd* %381, i32 0, i32 3
  %383 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %382, i32 0, i32 5
  %384 = load i32, i32* %383, align 4
  %385 = icmp ne i32 %380, %384
  br i1 %385, label %386, label %405

386:                                              ; preds = %379
  %387 = load i32, i32* %9, align 4
  %388 = load %struct.sd*, %struct.sd** %3, align 8
  %389 = getelementptr inbounds %struct.sd, %struct.sd* %388, i32 0, i32 3
  %390 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %389, i32 0, i32 5
  store i32 %387, i32* %390, align 4
  %391 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %392 = call i32 @ctrl_out(%struct.gspca_dev* %391, i32 64, i32 1, i32 47616, i32 240, i32 0, i32* null)
  %393 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %394 = call i32 @ctrl_out(%struct.gspca_dev* %393, i32 64, i32 1, i32 47617, i32 241, i32 0, i32* null)
  %395 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %396 = call i32 @ctrl_out(%struct.gspca_dev* %395, i32 64, i32 1, i32 47728, i32 226, i32 0, i32* null)
  %397 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %398 = load i32, i32* %9, align 4
  %399 = load i32, i32* %9, align 4
  %400 = icmp slt i32 %399, 6
  %401 = zext i1 %400 to i32
  %402 = mul nsw i32 %398, %401
  %403 = add nsw i32 47616, %402
  %404 = call i32 @ctrl_out(%struct.gspca_dev* %397, i32 64, i32 1, i32 %403, i32 241, i32 0, i32* null)
  br label %405

405:                                              ; preds = %386, %379
  %406 = load i32, i32* %12, align 4
  %407 = load %struct.sd*, %struct.sd** %3, align 8
  %408 = getelementptr inbounds %struct.sd, %struct.sd* %407, i32 0, i32 3
  %409 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %408, i32 0, i32 7
  %410 = load i32, i32* %409, align 4
  %411 = icmp ne i32 %406, %410
  br i1 %411, label %419, label %412

412:                                              ; preds = %405
  %413 = load i32, i32* %13, align 4
  %414 = load %struct.sd*, %struct.sd** %3, align 8
  %415 = getelementptr inbounds %struct.sd, %struct.sd* %414, i32 0, i32 3
  %416 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %415, i32 0, i32 8
  %417 = load i32, i32* %416, align 8
  %418 = icmp ne i32 %413, %417
  br i1 %418, label %419, label %440

419:                                              ; preds = %412, %405
  %420 = bitcast [4 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %420, i8* align 16 bitcast ([4 x i32]* @__const.mi1320_camera_settings.dat_hvflip2 to i8*), i64 16, i1 false)
  %421 = load i32, i32* %12, align 4
  %422 = load %struct.sd*, %struct.sd** %3, align 8
  %423 = getelementptr inbounds %struct.sd, %struct.sd* %422, i32 0, i32 3
  %424 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %423, i32 0, i32 7
  store i32 %421, i32* %424, align 4
  %425 = load i32, i32* %13, align 4
  %426 = load %struct.sd*, %struct.sd** %3, align 8
  %427 = getelementptr inbounds %struct.sd, %struct.sd* %426, i32 0, i32 3
  %428 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %427, i32 0, i32 8
  store i32 %425, i32* %428, align 8
  %429 = load i32, i32* %13, align 4
  %430 = load i32, i32* %12, align 4
  %431 = mul nsw i32 2, %430
  %432 = add nsw i32 %429, %431
  %433 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  store i32 %432, i32* %433, align 4
  %434 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %435 = load i32*, i32** @dat_hvflip1, align 8
  %436 = call i32 @ctrl_out(%struct.gspca_dev* %434, i32 64, i32 3, i32 47616, i32 512, i32 4, i32* %435)
  %437 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %438 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %439 = call i32 @ctrl_out(%struct.gspca_dev* %437, i32 64, i32 3, i32 47616, i32 512, i32 4, i32* %438)
  br label %440

440:                                              ; preds = %419, %412
  %441 = load i32, i32* %8, align 4
  %442 = load %struct.sd*, %struct.sd** %3, align 8
  %443 = getelementptr inbounds %struct.sd, %struct.sd* %442, i32 0, i32 3
  %444 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %443, i32 0, i32 9
  %445 = load i32, i32* %444, align 4
  %446 = icmp ne i32 %441, %445
  br i1 %446, label %447, label %475

447:                                              ; preds = %440
  %448 = load i32, i32* %8, align 4
  %449 = load %struct.sd*, %struct.sd** %3, align 8
  %450 = getelementptr inbounds %struct.sd, %struct.sd* %449, i32 0, i32 3
  %451 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %450, i32 0, i32 9
  store i32 %448, i32* %451, align 4
  %452 = load i32, i32* %8, align 4
  %453 = icmp slt i32 %452, 0
  br i1 %453, label %461, label %454

454:                                              ; preds = %447
  %455 = load i32, i32* %8, align 4
  %456 = load %struct.sd*, %struct.sd** %3, align 8
  %457 = getelementptr inbounds %struct.sd, %struct.sd* %456, i32 0, i32 2
  %458 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %457, i32 0, i32 6
  %459 = load i32, i32* %458, align 8
  %460 = icmp sgt i32 %455, %459
  br i1 %460, label %461, label %462

461:                                              ; preds = %454, %447
  store i32 0, i32* %8, align 4
  br label %462

462:                                              ; preds = %461, %454
  %463 = load i32, i32* %8, align 4
  %464 = mul nsw i32 2, %463
  store i32 %464, i32* %8, align 4
  %465 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %466 = call i32 @ctrl_out(%struct.gspca_dev* %465, i32 64, i32 1, i32 47616, i32 240, i32 0, i32* null)
  %467 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %468 = call i32 @ctrl_out(%struct.gspca_dev* %467, i32 64, i32 1, i32 47617, i32 241, i32 0, i32* null)
  %469 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %470 = call i32 @ctrl_out(%struct.gspca_dev* %469, i32 64, i32 1, i32 47620, i32 59, i32 0, i32* null)
  %471 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %472 = load i32, i32* %8, align 4
  %473 = add nsw i32 47618, %472
  %474 = call i32 @ctrl_out(%struct.gspca_dev* %471, i32 64, i32 1, i32 %473, i32 241, i32 0, i32* null)
  br label %475

475:                                              ; preds = %462, %440
  %476 = load i32, i32* %7, align 4
  %477 = load %struct.sd*, %struct.sd** %3, align 8
  %478 = getelementptr inbounds %struct.sd, %struct.sd* %477, i32 0, i32 3
  %479 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %478, i32 0, i32 10
  %480 = load i32, i32* %479, align 8
  %481 = icmp ne i32 %476, %480
  br i1 %481, label %482, label %518

482:                                              ; preds = %475
  %483 = load i32, i32* %7, align 4
  %484 = load %struct.sd*, %struct.sd** %3, align 8
  %485 = getelementptr inbounds %struct.sd, %struct.sd* %484, i32 0, i32 3
  %486 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %485, i32 0, i32 10
  store i32 %483, i32* %486, align 8
  %487 = load i32, i32* %7, align 4
  %488 = icmp slt i32 %487, 0
  br i1 %488, label %496, label %489

489:                                              ; preds = %482
  %490 = load i32, i32* %7, align 4
  %491 = load %struct.sd*, %struct.sd** %3, align 8
  %492 = getelementptr inbounds %struct.sd, %struct.sd* %491, i32 0, i32 2
  %493 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %492, i32 0, i32 7
  %494 = load i32, i32* %493, align 4
  %495 = icmp sgt i32 %490, %494
  br i1 %495, label %496, label %497

496:                                              ; preds = %489, %482
  store i32 0, i32* %7, align 4
  br label %497

497:                                              ; preds = %496, %489
  %498 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %499 = call i32 @ctrl_out(%struct.gspca_dev* %498, i32 64, i32 1, i32 47616, i32 240, i32 0, i32* null)
  %500 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %501 = call i32 @ctrl_out(%struct.gspca_dev* %500, i32 64, i32 1, i32 47617, i32 241, i32 0, i32* null)
  %502 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %503 = load i32*, i32** @tbl_cntr1, align 8
  %504 = load i32, i32* %7, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i32, i32* %503, i64 %505
  %507 = load i32, i32* %506, align 4
  %508 = add nsw i32 47616, %507
  %509 = call i32 @ctrl_out(%struct.gspca_dev* %502, i32 64, i32 1, i32 %508, i32 53, i32 0, i32* null)
  %510 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %511 = load i32*, i32** @tbl_cntr2, align 8
  %512 = load i32, i32* %7, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i32, i32* %511, i64 %513
  %515 = load i32, i32* %514, align 4
  %516 = add nsw i32 47616, %515
  %517 = call i32 @ctrl_out(%struct.gspca_dev* %510, i32 64, i32 1, i32 %516, i32 241, i32 0, i32* null)
  br label %518

518:                                              ; preds = %497, %475
  ret i32 0
}

declare dso_local i32 @ctrl_out(%struct.gspca_dev*, i32, i32, i32, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
