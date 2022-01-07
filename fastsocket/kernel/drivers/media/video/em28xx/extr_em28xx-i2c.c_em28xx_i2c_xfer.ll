; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-i2c.c_em28xx_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-i2c.c_em28xx_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.em28xx* }
%struct.em28xx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.i2c_msg = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [22 x i8] c"%s %s addr=%x len=%d:\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"nonstop\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" no device\0A\00", align 1
@i2c_debug = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c" ERROR: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @em28xx_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.em28xx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %13, i32 0, i32 0
  %15 = load %struct.em28xx*, %struct.em28xx** %14, align 8
  store %struct.em28xx* %15, %struct.em28xx** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %256

19:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %247, %19
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %250

24:                                               ; preds = %20
  %25 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i64 %27
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = shl i32 %30, 1
  store i32 %31, i32* %9, align 4
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i64 %34
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @I2C_M_RD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, 1
  %46 = icmp eq i32 %43, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i64 %52
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i8*, ...) @dprintk2(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %42, i8* %48, i32 %49, i32 %55)
  %57 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i64 %59
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %85, label %64

64:                                               ; preds = %24
  %65 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %66 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @em2800_i2c_check_for_device(%struct.em28xx* %71, i32 %72)
  store i32 %73, i32* %10, align 4
  br label %78

74:                                               ; preds = %64
  %75 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @em28xx_i2c_check_for_device(%struct.em28xx* %75, i32 %76)
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %74, %70
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = call i32 (i32, i8*, ...) @dprintk2(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %256

84:                                               ; preds = %78
  br label %237

85:                                               ; preds = %24
  %86 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %86, i64 %88
  %90 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @I2C_M_RD, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %163

95:                                               ; preds = %85
  %96 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %97 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %95
  %102 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %104, i64 %106
  %108 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %110, i64 %112
  %114 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @em2800_i2c_recv_bytes(%struct.em28xx* %102, i32 %103, i32* %109, i32 %115)
  store i32 %116, i32* %10, align 4
  br label %133

117:                                              ; preds = %95
  %118 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %120, i64 %122
  %124 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %126, i64 %128
  %130 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @em28xx_i2c_recv_bytes(%struct.em28xx* %118, i32 %119, i32* %125, i32 %131)
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %117, %101
  %134 = load i32, i32* @i2c_debug, align 4
  %135 = icmp sge i32 %134, 2
  br i1 %135, label %136, label %162

136:                                              ; preds = %133
  store i32 0, i32* %12, align 4
  br label %137

137:                                              ; preds = %158, %136
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %139, i64 %141
  %143 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %138, %144
  br i1 %145, label %146, label %161

146:                                              ; preds = %137
  %147 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %147, i64 %149
  %151 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %146
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %12, align 4
  br label %137

161:                                              ; preds = %137
  br label %162

162:                                              ; preds = %161, %133
  br label %236

163:                                              ; preds = %85
  %164 = load i32, i32* @i2c_debug, align 4
  %165 = icmp sge i32 %164, 2
  br i1 %165, label %166, label %192

166:                                              ; preds = %163
  store i32 0, i32* %12, align 4
  br label %167

167:                                              ; preds = %188, %166
  %168 = load i32, i32* %12, align 4
  %169 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %169, i64 %171
  %173 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = icmp slt i32 %168, %174
  br i1 %175, label %176, label %191

176:                                              ; preds = %167
  %177 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %177, i64 %179
  %181 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %186)
  br label %188

188:                                              ; preds = %176
  %189 = load i32, i32* %12, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %12, align 4
  br label %167

191:                                              ; preds = %167
  br label %192

192:                                              ; preds = %191, %163
  %193 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %194 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %214

198:                                              ; preds = %192
  %199 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %200 = load i32, i32* %9, align 4
  %201 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %201, i64 %203
  %205 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %208 = load i32, i32* %11, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %207, i64 %209
  %211 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @em2800_i2c_send_bytes(%struct.em28xx* %199, i32 %200, i32* %206, i32 %212)
  store i32 %213, i32* %10, align 4
  br label %235

214:                                              ; preds = %192
  %215 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %216 = load i32, i32* %9, align 4
  %217 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %217, i64 %219
  %221 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %220, i32 0, i32 3
  %222 = load i32*, i32** %221, align 8
  %223 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %224 = load i32, i32* %11, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %223, i64 %225
  %227 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* %7, align 4
  %231 = sub nsw i32 %230, 1
  %232 = icmp eq i32 %229, %231
  %233 = zext i1 %232 to i32
  %234 = call i32 @em28xx_i2c_send_bytes(%struct.em28xx* %215, i32 %216, i32* %222, i32 %228, i32 %233)
  store i32 %234, i32* %10, align 4
  br label %235

235:                                              ; preds = %214, %198
  br label %236

236:                                              ; preds = %235, %162
  br label %237

237:                                              ; preds = %236, %84
  %238 = load i32, i32* %10, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  br label %252

241:                                              ; preds = %237
  %242 = load i32, i32* @i2c_debug, align 4
  %243 = icmp sge i32 %242, 2
  br i1 %243, label %244, label %246

244:                                              ; preds = %241
  %245 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %246

246:                                              ; preds = %244, %241
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %11, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %11, align 4
  br label %20

250:                                              ; preds = %20
  %251 = load i32, i32* %7, align 4
  store i32 %251, i32* %4, align 4
  br label %256

252:                                              ; preds = %240
  %253 = load i32, i32* %10, align 4
  %254 = call i32 (i32, i8*, ...) @dprintk2(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %253)
  %255 = load i32, i32* %10, align 4
  store i32 %255, i32* %4, align 4
  br label %256

256:                                              ; preds = %252, %250, %81, %18
  %257 = load i32, i32* %4, align 4
  ret i32 %257
}

declare dso_local i32 @dprintk2(i32, i8*, ...) #1

declare dso_local i32 @em2800_i2c_check_for_device(%struct.em28xx*, i32) #1

declare dso_local i32 @em28xx_i2c_check_for_device(%struct.em28xx*, i32) #1

declare dso_local i32 @em2800_i2c_recv_bytes(%struct.em28xx*, i32, i32*, i32) #1

declare dso_local i32 @em28xx_i2c_recv_bytes(%struct.em28xx*, i32, i32*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @em2800_i2c_send_bytes(%struct.em28xx*, i32, i32*, i32) #1

declare dso_local i32 @em28xx_i2c_send_bytes(%struct.em28xx*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
