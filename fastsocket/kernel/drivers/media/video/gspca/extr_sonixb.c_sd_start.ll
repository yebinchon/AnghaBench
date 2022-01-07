; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixb.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixb.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.gspca_dev = type { i64, %struct.cam }
%struct.cam = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sd = type { i64, i64, i32, i32, i64, i64, i64, i64 }

@sensor_data = common dso_local global %struct.TYPE_4__* null, align 8
@BRIDGE_103 = common dso_local global i64 0, align 8
@F_SIF = common dso_local global i32 0, align 4
@MODE_RAW = common dso_local global i32 0, align 4
@MODE_REDUCED_SIF = common dso_local global i32 0, align 4
@__const.sd_start.i2cpclockdiv = private unnamed_addr constant [8 x i32] [i32 160, i32 64, i32 2, i32 3, i32 0, i32 0, i32 0, i32 16], align 16
@__const.sd_start.i2c = private unnamed_addr constant [8 x i32] [i32 160, i32 33, i32 19, i32 128, i32 0, i32 0, i32 0, i32 16], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca %struct.cam*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [49 x i32], align 16
  %8 = alloca [8 x i32], align 16
  %9 = alloca [8 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %11 = bitcast %struct.gspca_dev* %10 to %struct.sd*
  store %struct.sd* %11, %struct.sd** %3, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %12, i32 0, i32 1
  store %struct.cam* %13, %struct.cam** %4, align 8
  %14 = load %struct.cam*, %struct.cam** %4, align 8
  %15 = getelementptr inbounds %struct.cam, %struct.cam* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 7
  store i32 %23, i32* %6, align 4
  %24 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sensor_data, align 8
  %26 = load %struct.sd*, %struct.sd** %3, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i32* %24, i32 %31, i32 25)
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 %33, 4
  %35 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 24
  %36 = load i32, i32* %35, align 16
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 16
  %38 = load %struct.sd*, %struct.sd** %3, align 8
  %39 = getelementptr inbounds %struct.sd, %struct.sd* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BRIDGE_103, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %1
  %44 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 5
  store i32 32, i32* %44, align 4
  %45 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 6
  store i32 32, i32* %45, align 8
  %46 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 7
  store i32 32, i32* %46, align 4
  br label %50

47:                                               ; preds = %1
  %48 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 16
  store i32 0, i32* %48, align 16
  %49 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 17
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %43
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sensor_data, align 8
  %52 = load %struct.sd*, %struct.sd** %3, align 8
  %53 = getelementptr inbounds %struct.sd, %struct.sd* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @F_SIF, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %50
  %62 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 26
  store i32 20, i32* %62, align 8
  %63 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 27
  store i32 10, i32* %63, align 4
  %64 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 28
  store i32 2, i32* %64, align 16
  %65 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 29
  store i32 2, i32* %65, align 4
  %66 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 30
  store i32 9, i32* %66, align 8
  %67 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 31
  store i32 7, i32* %67, align 4
  br label %75

68:                                               ; preds = %50
  %69 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 26
  store i32 29, i32* %69, align 8
  %70 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 27
  store i32 16, i32* %70, align 4
  %71 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 28
  store i32 5, i32* %71, align 16
  %72 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 29
  store i32 3, i32* %72, align 4
  %73 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 30
  store i32 15, i32* %73, align 8
  %74 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 31
  store i32 12, i32* %74, align 4
  br label %75

75:                                               ; preds = %68, %61
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %86, %75
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %77, 16
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load i32, i32* %5, align 4
  %81 = mul nsw i32 %80, 16
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 32, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 %84
  store i32 %81, i32* %85, align 4
  br label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %76

89:                                               ; preds = %76
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 32, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 %92
  store i32 255, i32* %93, align 4
  %94 = load %struct.sd*, %struct.sd** %3, align 8
  %95 = getelementptr inbounds %struct.sd, %struct.sd* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  switch i64 %96, label %113 [
    i64 128, label %97
    i64 130, label %103
  ]

97:                                               ; preds = %89
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 35, i32 67
  %102 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 25
  store i32 %101, i32* %102, align 4
  br label %113

103:                                              ; preds = %89
  %104 = load %struct.sd*, %struct.sd** %3, align 8
  %105 = getelementptr inbounds %struct.sd, %struct.sd* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @BRIDGE_103, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 1
  store i32 68, i32* %110, align 4
  %111 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 18
  store i32 2, i32* %111, align 8
  br label %112

112:                                              ; preds = %109, %103
  br label %113

113:                                              ; preds = %112, %89, %97
  %114 = load %struct.cam*, %struct.cam** %4, align 8
  %115 = getelementptr inbounds %struct.cam, %struct.cam* %114, i32 0, i32 0
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %118 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @MODE_RAW, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %113
  %127 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 24
  %128 = load i32, i32* %127, align 16
  %129 = and i32 %128, -129
  store i32 %129, i32* %127, align 16
  br label %130

130:                                              ; preds = %126, %113
  %131 = load %struct.cam*, %struct.cam** %4, align 8
  %132 = getelementptr inbounds %struct.cam, %struct.cam* %131, i32 0, i32 0
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %135 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @MODE_REDUCED_SIF, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %130
  %144 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 18
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 16
  store i32 %146, i32* %144, align 8
  %147 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 19
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 24
  store i32 %149, i32* %147, align 4
  %150 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 21
  store i32 20, i32* %150, align 4
  %151 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 22
  store i32 15, i32* %151, align 8
  br label %152

152:                                              ; preds = %143, %130
  %153 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %154 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 1
  %155 = call i32 @reg_w(%struct.gspca_dev* %153, i32 1, i32* %154, i32 1)
  %156 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %157 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 23
  %158 = call i32 @reg_w(%struct.gspca_dev* %156, i32 23, i32* %157, i32 1)
  %159 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %160 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 1
  %161 = load %struct.sd*, %struct.sd** %3, align 8
  %162 = getelementptr inbounds %struct.sd, %struct.sd* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @BRIDGE_103, align 8
  %165 = icmp eq i64 %163, %164
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i32 48, i32 31
  %168 = call i32 @reg_w(%struct.gspca_dev* %159, i32 1, i32* %160, i32 %167)
  %169 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sensor_data, align 8
  %171 = load %struct.sd*, %struct.sd** %3, align 8
  %172 = getelementptr inbounds %struct.sd, %struct.sd* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sensor_data, align 8
  %178 = load %struct.sd*, %struct.sd** %3, align 8
  %179 = getelementptr inbounds %struct.sd, %struct.sd* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @i2c_w_vector(%struct.gspca_dev* %169, i32 %176, i32 %183)
  %185 = load %struct.sd*, %struct.sd** %3, align 8
  %186 = getelementptr inbounds %struct.sd, %struct.sd* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  switch i64 %187, label %209 [
    i64 129, label %188
    i64 130, label %197
  ]

188:                                              ; preds = %152
  %189 = bitcast [8 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %189, i8* align 16 bitcast ([8 x i32]* @__const.sd_start.i2cpclockdiv to i8*), i64 32, i1 false)
  %190 = load i32, i32* %6, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %188
  %193 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %194 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %195 = call i32 @i2c_w(%struct.gspca_dev* %193, i32* %194)
  br label %196

196:                                              ; preds = %192, %188
  br label %209

197:                                              ; preds = %152
  %198 = load %struct.sd*, %struct.sd** %3, align 8
  %199 = getelementptr inbounds %struct.sd, %struct.sd* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @BRIDGE_103, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %197
  %204 = bitcast [8 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %204, i8* align 16 bitcast ([8 x i32]* @__const.sd_start.i2c to i8*), i64 32, i1 false)
  %205 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %206 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %207 = call i32 @i2c_w(%struct.gspca_dev* %205, i32* %206)
  br label %208

208:                                              ; preds = %203, %197
  br label %209

209:                                              ; preds = %152, %208, %196
  %210 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %211 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 21
  %212 = call i32 @reg_w(%struct.gspca_dev* %210, i32 21, i32* %211, i32 2)
  %213 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %214 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 24
  %215 = call i32 @reg_w(%struct.gspca_dev* %213, i32 24, i32* %214, i32 1)
  %216 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %217 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 18
  %218 = call i32 @reg_w(%struct.gspca_dev* %216, i32 18, i32* %217, i32 1)
  %219 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %220 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 19
  %221 = call i32 @reg_w(%struct.gspca_dev* %219, i32 19, i32* %220, i32 1)
  %222 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %223 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 23
  %224 = call i32 @reg_w(%struct.gspca_dev* %222, i32 23, i32* %223, i32 1)
  %225 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %226 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 25
  %227 = call i32 @reg_w(%struct.gspca_dev* %225, i32 25, i32* %226, i32 1)
  %228 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %229 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 28
  %230 = call i32 @reg_w(%struct.gspca_dev* %228, i32 28, i32* %229, i32 4)
  %231 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %232 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 1
  %233 = call i32 @reg_w(%struct.gspca_dev* %231, i32 1, i32* %232, i32 1)
  %234 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %235 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 24
  %236 = call i32 @reg_w(%struct.gspca_dev* %234, i32 24, i32* %235, i32 2)
  %237 = call i32 @msleep(i32 20)
  %238 = load %struct.sd*, %struct.sd** %3, align 8
  %239 = getelementptr inbounds %struct.sd, %struct.sd* %238, i32 0, i32 2
  store i32 -1, i32* %239, align 8
  %240 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %241 = call i32 @setgain(%struct.gspca_dev* %240)
  %242 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %243 = call i32 @setbrightness(%struct.gspca_dev* %242)
  %244 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %245 = call i32 @setexposure(%struct.gspca_dev* %244)
  %246 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %247 = call i32 @setfreq(%struct.gspca_dev* %246)
  %248 = load %struct.sd*, %struct.sd** %3, align 8
  %249 = getelementptr inbounds %struct.sd, %struct.sd* %248, i32 0, i32 7
  store i64 0, i64* %249, align 8
  %250 = load %struct.sd*, %struct.sd** %3, align 8
  %251 = getelementptr inbounds %struct.sd, %struct.sd* %250, i32 0, i32 6
  store i64 0, i64* %251, align 8
  %252 = load %struct.sd*, %struct.sd** %3, align 8
  %253 = getelementptr inbounds %struct.sd, %struct.sd* %252, i32 0, i32 5
  store i64 0, i64* %253, align 8
  %254 = load %struct.sd*, %struct.sd** %3, align 8
  %255 = getelementptr inbounds %struct.sd, %struct.sd* %254, i32 0, i32 4
  store i64 0, i64* %255, align 8
  %256 = load %struct.sd*, %struct.sd** %3, align 8
  %257 = getelementptr inbounds %struct.sd, %struct.sd* %256, i32 0, i32 3
  %258 = call i32 @atomic_set(i32* %257, i32 -1)
  ret i32 0
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #1

declare dso_local i32 @i2c_w_vector(%struct.gspca_dev*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i2c_w(%struct.gspca_dev*, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @setgain(%struct.gspca_dev*) #1

declare dso_local i32 @setbrightness(%struct.gspca_dev*) #1

declare dso_local i32 @setexposure(%struct.gspca_dev*) #1

declare dso_local i32 @setfreq(%struct.gspca_dev*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
