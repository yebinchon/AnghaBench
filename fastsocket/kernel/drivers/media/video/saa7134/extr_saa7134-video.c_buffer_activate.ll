; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_buffer_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_buffer_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.saa7134_buf = type { %struct.TYPE_7__, %struct.TYPE_6__*, %struct.TYPE_5__*, i64 }
%struct.TYPE_7__ = type { i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i64, i64, i64, i64, i64, i32, i64 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"buffer_activate buf=%p\0A\00", align 1
@VIDEOBUF_ACTIVE = common dso_local global i32 0, align 4
@TASK_A = common dso_local global i32 0, align 4
@SAA7134_OFMT_VIDEO_A = common dso_local global i32 0, align 4
@SAA7134_RS_CONTROL_BURST_16 = common dso_local global i32 0, align 4
@SAA7134_RS_CONTROL_ME = common dso_local global i32 0, align 4
@SAA7134_RS_CONTROL_BSWAP = common dso_local global i64 0, align 8
@SAA7134_RS_CONTROL_WSWAP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"uv: bpl=%ld lines=%ld base2/3=%ld/%ld\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@BUFFER_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*, %struct.saa7134_buf*, %struct.saa7134_buf*)* @buffer_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_activate(%struct.saa7134_dev* %0, %struct.saa7134_buf* %1, %struct.saa7134_buf* %2) #0 {
  %4 = alloca %struct.saa7134_dev*, align 8
  %5 = alloca %struct.saa7134_buf*, align 8
  %6 = alloca %struct.saa7134_buf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %4, align 8
  store %struct.saa7134_buf* %1, %struct.saa7134_buf** %5, align 8
  store %struct.saa7134_buf* %2, %struct.saa7134_buf** %6, align 8
  %15 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %16 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.saa7134_buf* %15)
  %17 = load i32, i32* @VIDEOBUF_ACTIVE, align 4
  %18 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %19 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  store i32 %17, i32* %20, align 4
  %21 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %22 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %24 = load i32, i32* @TASK_A, align 4
  %25 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %26 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %30 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %34 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @V4L2_FIELD_HAS_BOTH(i32 %36)
  %38 = call i32 @set_size(%struct.saa7134_dev* %23, i32 %24, i64 %28, i64 %32, i64 %37)
  %39 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %40 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %3
  %46 = load i32, i32* @TASK_A, align 4
  %47 = call i32 @SAA7134_DATA_PATH(i32 %46)
  %48 = call i32 @saa_andorb(i32 %47, i32 63, i32 3)
  br label %53

49:                                               ; preds = %3
  %50 = load i32, i32* @TASK_A, align 4
  %51 = call i32 @SAA7134_DATA_PATH(i32 %50)
  %52 = call i32 @saa_andorb(i32 %51, i32 63, i32 1)
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i32, i32* @SAA7134_OFMT_VIDEO_A, align 4
  %55 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %56 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @saa_writeb(i32 %54, i32 %59)
  %61 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %62 = call i64 @saa7134_buffer_base(%struct.saa7134_buf* %61)
  store i64 %62, i64* %7, align 8
  %63 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %64 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %53
  %70 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %71 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %9, align 8
  br label %87

74:                                               ; preds = %53
  %75 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %76 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %80 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = mul i64 %78, %84
  %86 = udiv i64 %85, 8
  store i64 %86, i64* %9, align 8
  br label %87

87:                                               ; preds = %74, %69
  %88 = load i32, i32* @SAA7134_RS_CONTROL_BURST_16, align 4
  %89 = load i32, i32* @SAA7134_RS_CONTROL_ME, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %92 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %91, i32 0, i32 2
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 12
  %97 = or i32 %90, %96
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %8, align 8
  %99 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %100 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %87
  %106 = load i64, i64* @SAA7134_RS_CONTROL_BSWAP, align 8
  %107 = load i64, i64* %8, align 8
  %108 = or i64 %107, %106
  store i64 %108, i64* %8, align 8
  br label %109

109:                                              ; preds = %105, %87
  %110 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %111 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %110, i32 0, i32 1
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load i64, i64* @SAA7134_RS_CONTROL_WSWAP, align 8
  %118 = load i64, i64* %8, align 8
  %119 = or i64 %118, %117
  store i64 %119, i64* %8, align 8
  br label %120

120:                                              ; preds = %116, %109
  %121 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %122 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @V4L2_FIELD_HAS_BOTH(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %120
  %128 = call i32 @SAA7134_RS_BA1(i32 0)
  %129 = load i64, i64* %7, align 8
  %130 = call i32 @saa_writel(i32 %128, i64 %129)
  %131 = call i32 @SAA7134_RS_BA2(i32 0)
  %132 = load i64, i64* %7, align 8
  %133 = load i64, i64* %9, align 8
  %134 = add i64 %132, %133
  %135 = call i32 @saa_writel(i32 %131, i64 %134)
  %136 = call i32 @SAA7134_RS_PITCH(i32 0)
  %137 = load i64, i64* %9, align 8
  %138 = mul i64 %137, 2
  %139 = call i32 @saa_writel(i32 %136, i64 %138)
  br label %150

140:                                              ; preds = %120
  %141 = call i32 @SAA7134_RS_BA1(i32 0)
  %142 = load i64, i64* %7, align 8
  %143 = call i32 @saa_writel(i32 %141, i64 %142)
  %144 = call i32 @SAA7134_RS_BA2(i32 0)
  %145 = load i64, i64* %7, align 8
  %146 = call i32 @saa_writel(i32 %144, i64 %145)
  %147 = call i32 @SAA7134_RS_PITCH(i32 0)
  %148 = load i64, i64* %9, align 8
  %149 = call i32 @saa_writel(i32 %147, i64 %148)
  br label %150

150:                                              ; preds = %140, %127
  %151 = call i32 @SAA7134_RS_CONTROL(i32 0)
  %152 = load i64, i64* %8, align 8
  %153 = call i32 @saa_writel(i32 %151, i64 %152)
  %154 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %155 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %154, i32 0, i32 1
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %264

160:                                              ; preds = %150
  %161 = load i64, i64* %9, align 8
  %162 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %163 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %162, i32 0, i32 1
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = lshr i64 %161, %166
  store i64 %167, i64* %10, align 8
  %168 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %169 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %173 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %172, i32 0, i32 1
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = lshr i64 %171, %176
  store i64 %177, i64* %11, align 8
  %178 = load i64, i64* %7, align 8
  %179 = load i64, i64* %9, align 8
  %180 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %181 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = mul i64 %179, %183
  %185 = add i64 %178, %184
  store i64 %185, i64* %12, align 8
  %186 = load i64, i64* %12, align 8
  %187 = load i64, i64* %10, align 8
  %188 = load i64, i64* %11, align 8
  %189 = mul i64 %187, %188
  %190 = add i64 %186, %189
  store i64 %190, i64* %13, align 8
  %191 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %192 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %191, i32 0, i32 1
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %160
  %198 = load i64, i64* %12, align 8
  store i64 %198, i64* %14, align 8
  %199 = load i64, i64* %13, align 8
  store i64 %199, i64* %12, align 8
  %200 = load i64, i64* %14, align 8
  store i64 %200, i64* %13, align 8
  br label %201

201:                                              ; preds = %197, %160
  %202 = load i64, i64* %10, align 8
  %203 = load i64, i64* %11, align 8
  %204 = load i64, i64* %12, align 8
  %205 = load i64, i64* %13, align 8
  %206 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %202, i64 %203, i64 %204, i64 %205)
  %207 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %208 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = call i64 @V4L2_FIELD_HAS_BOTH(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %238

213:                                              ; preds = %201
  %214 = call i32 @SAA7134_RS_BA1(i32 4)
  %215 = load i64, i64* %12, align 8
  %216 = call i32 @saa_writel(i32 %214, i64 %215)
  %217 = call i32 @SAA7134_RS_BA2(i32 4)
  %218 = load i64, i64* %12, align 8
  %219 = load i64, i64* %10, align 8
  %220 = add i64 %218, %219
  %221 = call i32 @saa_writel(i32 %217, i64 %220)
  %222 = call i32 @SAA7134_RS_PITCH(i32 4)
  %223 = load i64, i64* %10, align 8
  %224 = mul i64 %223, 2
  %225 = call i32 @saa_writel(i32 %222, i64 %224)
  %226 = call i32 @SAA7134_RS_BA1(i32 5)
  %227 = load i64, i64* %13, align 8
  %228 = call i32 @saa_writel(i32 %226, i64 %227)
  %229 = call i32 @SAA7134_RS_BA2(i32 5)
  %230 = load i64, i64* %13, align 8
  %231 = load i64, i64* %10, align 8
  %232 = add i64 %230, %231
  %233 = call i32 @saa_writel(i32 %229, i64 %232)
  %234 = call i32 @SAA7134_RS_PITCH(i32 5)
  %235 = load i64, i64* %10, align 8
  %236 = mul i64 %235, 2
  %237 = call i32 @saa_writel(i32 %234, i64 %236)
  br label %257

238:                                              ; preds = %201
  %239 = call i32 @SAA7134_RS_BA1(i32 4)
  %240 = load i64, i64* %12, align 8
  %241 = call i32 @saa_writel(i32 %239, i64 %240)
  %242 = call i32 @SAA7134_RS_BA2(i32 4)
  %243 = load i64, i64* %12, align 8
  %244 = call i32 @saa_writel(i32 %242, i64 %243)
  %245 = call i32 @SAA7134_RS_PITCH(i32 4)
  %246 = load i64, i64* %10, align 8
  %247 = call i32 @saa_writel(i32 %245, i64 %246)
  %248 = call i32 @SAA7134_RS_BA1(i32 5)
  %249 = load i64, i64* %13, align 8
  %250 = call i32 @saa_writel(i32 %248, i64 %249)
  %251 = call i32 @SAA7134_RS_BA2(i32 5)
  %252 = load i64, i64* %13, align 8
  %253 = call i32 @saa_writel(i32 %251, i64 %252)
  %254 = call i32 @SAA7134_RS_PITCH(i32 5)
  %255 = load i64, i64* %10, align 8
  %256 = call i32 @saa_writel(i32 %254, i64 %255)
  br label %257

257:                                              ; preds = %238, %213
  %258 = call i32 @SAA7134_RS_CONTROL(i32 4)
  %259 = load i64, i64* %8, align 8
  %260 = call i32 @saa_writel(i32 %258, i64 %259)
  %261 = call i32 @SAA7134_RS_CONTROL(i32 5)
  %262 = load i64, i64* %8, align 8
  %263 = call i32 @saa_writel(i32 %261, i64 %262)
  br label %264

264:                                              ; preds = %257, %150
  %265 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %266 = call i32 @saa7134_set_dmabits(%struct.saa7134_dev* %265)
  %267 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %268 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 0
  %270 = load i64, i64* @jiffies, align 8
  %271 = load i64, i64* @BUFFER_TIMEOUT, align 8
  %272 = add nsw i64 %270, %271
  %273 = call i32 @mod_timer(i32* %269, i64 %272)
  ret i32 0
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @set_size(%struct.saa7134_dev*, i32, i64, i64, i64) #1

declare dso_local i64 @V4L2_FIELD_HAS_BOTH(i32) #1

declare dso_local i32 @saa_andorb(i32, i32, i32) #1

declare dso_local i32 @SAA7134_DATA_PATH(i32) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i64 @saa7134_buffer_base(%struct.saa7134_buf*) #1

declare dso_local i32 @saa_writel(i32, i64) #1

declare dso_local i32 @SAA7134_RS_BA1(i32) #1

declare dso_local i32 @SAA7134_RS_BA2(i32) #1

declare dso_local i32 @SAA7134_RS_PITCH(i32) #1

declare dso_local i32 @SAA7134_RS_CONTROL(i32) #1

declare dso_local i32 @saa7134_set_dmabits(%struct.saa7134_dev*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
