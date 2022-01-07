; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-yuv.c_ivtv_yuv_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-yuv.c_ivtv_yuv_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32, i32, %struct.yuv_playback_info }
%struct.yuv_playback_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32*, i32, i32, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"ivtv_yuv_close\0A\00", align 1
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@IVTV_F_I_DECODING_YUV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_yuv_close(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca %struct.yuv_playback_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %7 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %8 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %7, i32 0, i32 3
  store %struct.yuv_playback_info* %8, %struct.yuv_playback_info** %3, align 8
  %9 = call i32 @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %11 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %10, i32 0, i32 2
  %12 = call i32 @ivtv_waitq(i32* %11)
  %13 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %14 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %13, i32 0, i32 43
  store i64 0, i64* %14, align 8
  %15 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %16 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %15, i32 0, i32 42
  %17 = call i32 @atomic_set(i32* %16, i32 -1)
  %18 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %19 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %18, i32 0, i32 41
  %20 = call i32 @atomic_set(i32* %19, i32 0)
  %21 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %22 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, 16777216
  %25 = call i32 @write_reg(i32 %24, i32 10392)
  %26 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %27 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @write_reg(i32 %28, i32 10292)
  %30 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %31 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @write_reg(i32 %32, i32 10296)
  %34 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %35 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @write_reg(i32 %36, i32 10300)
  %38 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %39 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @write_reg(i32 %40, i32 10304)
  %42 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %43 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @write_reg(i32 %44, i32 10308)
  %46 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %47 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @write_reg(i32 %48, i32 10312)
  %50 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %51 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @write_reg(i32 %52, i32 10324)
  %54 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %55 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @write_reg(i32 %56, i32 10332)
  %58 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %59 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @write_reg(i32 %60, i32 10340)
  %62 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %63 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %62, i32 0, i32 10
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @write_reg(i32 %64, i32 10352)
  %66 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %67 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %66, i32 0, i32 11
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @write_reg(i32 %68, i32 10356)
  %70 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %71 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %70, i32 0, i32 12
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @write_reg(i32 %72, i32 10384)
  %74 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %75 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %74, i32 0, i32 13
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @write_reg(i32 %76, i32 10396)
  %78 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %79 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %78, i32 0, i32 14
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @write_reg(i32 %80, i32 10520)
  %82 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %83 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %82, i32 0, i32 15
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @write_reg(i32 %84, i32 10524)
  %86 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %87 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %86, i32 0, i32 16
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @write_reg(i32 %88, i32 10528)
  %90 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %91 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %90, i32 0, i32 17
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @write_reg(i32 %92, i32 10532)
  %94 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %95 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %94, i32 0, i32 18
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @write_reg(i32 %96, i32 10536)
  %98 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %99 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %98, i32 0, i32 19
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @write_reg(i32 %100, i32 10540)
  %102 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %103 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %102, i32 0, i32 20
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @write_reg(i32 %104, i32 10544)
  %106 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %107 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %106, i32 0, i32 21
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @write_reg(i32 %108, i32 10548)
  %110 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %111 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %110, i32 0, i32 22
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @write_reg(i32 %112, i32 10552)
  %114 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %115 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %114, i32 0, i32 23
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @write_reg(i32 %116, i32 10556)
  %118 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %119 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %118, i32 0, i32 24
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @write_reg(i32 %120, i32 10560)
  %122 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %123 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %122, i32 0, i32 25
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @write_reg(i32 %124, i32 10564)
  %126 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %127 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %126, i32 0, i32 26
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @write_reg(i32 %128, i32 10568)
  %130 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %131 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %130, i32 0, i32 27
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @write_reg(i32 %132, i32 10572)
  %134 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %135 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %134, i32 0, i32 28
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @write_reg(i32 %136, i32 10576)
  %138 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %139 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %138, i32 0, i32 29
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @write_reg(i32 %140, i32 10580)
  %142 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %143 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %142, i32 0, i32 30
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @write_reg(i32 %144, i32 10584)
  %146 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %147 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %146, i32 0, i32 31
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @write_reg(i32 %148, i32 10588)
  %150 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %151 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %150, i32 0, i32 32
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @write_reg(i32 %152, i32 10592)
  %154 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %155 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %154, i32 0, i32 33
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @write_reg(i32 %156, i32 10596)
  %158 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %159 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %158, i32 0, i32 34
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @write_reg(i32 %160, i32 10600)
  %162 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %163 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %162, i32 0, i32 35
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @write_reg(i32 %164, i32 10604)
  %166 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %167 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %166, i32 0, i32 36
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @write_reg(i32 %168, i32 10608)
  %170 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %171 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, 65535
  %174 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %175 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = ashr i32 %176, 16
  %178 = icmp eq i32 %173, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %1
  store i32 0, i32* %4, align 4
  br label %202

180:                                              ; preds = %1
  %181 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %182 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = shl i32 %183, 16
  %185 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %186 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = ashr i32 %187, 16
  %189 = sdiv i32 %184, %188
  %190 = ashr i32 %189, 15
  store i32 %190, i32* %4, align 4
  %191 = load i32, i32* %4, align 4
  %192 = ashr i32 %191, 1
  %193 = load i32, i32* %4, align 4
  %194 = and i32 %193, 1
  %195 = add nsw i32 %192, %194
  store i32 %195, i32* %4, align 4
  %196 = load i32, i32* %4, align 4
  %197 = icmp ne i32 %196, 0
  %198 = xor i1 %197, true
  %199 = zext i1 %198 to i32
  %200 = load i32, i32* %4, align 4
  %201 = add nsw i32 %200, %199
  store i32 %201, i32* %4, align 4
  br label %202

202:                                              ; preds = %180, %179
  %203 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %204 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %203, i32 0, i32 14
  %205 = load i32, i32* %204, align 8
  %206 = and i32 %205, 65535
  %207 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %208 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %207, i32 0, i32 14
  %209 = load i32, i32* %208, align 8
  %210 = ashr i32 %209, 16
  %211 = icmp eq i32 %206, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %202
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %236

213:                                              ; preds = %202
  %214 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %215 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %214, i32 0, i32 14
  %216 = load i32, i32* %215, align 8
  %217 = shl i32 %216, 16
  %218 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %219 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %218, i32 0, i32 14
  %220 = load i32, i32* %219, align 8
  %221 = ashr i32 %220, 16
  %222 = sdiv i32 %217, %221
  %223 = ashr i32 %222, 15
  store i32 %223, i32* %5, align 4
  %224 = load i32, i32* %5, align 4
  %225 = ashr i32 %224, 1
  %226 = load i32, i32* %5, align 4
  %227 = and i32 %226, 1
  %228 = add nsw i32 %225, %227
  store i32 %228, i32* %5, align 4
  %229 = load i32, i32* %5, align 4
  %230 = icmp ne i32 %229, 0
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i32
  %233 = load i32, i32* %5, align 4
  %234 = add nsw i32 %233, %232
  store i32 %234, i32* %5, align 4
  %235 = load i32, i32* %5, align 4
  store i32 %235, i32* %6, align 4
  br label %236

236:                                              ; preds = %213, %212
  %237 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %238 = load i32, i32* %4, align 4
  %239 = load i32, i32* %5, align 4
  %240 = load i32, i32* %6, align 4
  %241 = call i32 @ivtv_yuv_filter(%struct.ivtv* %237, i32 %238, i32 %239, i32 %240)
  %242 = call i32 @write_reg(i32 0, i32 10260)
  %243 = call i32 @write_reg(i32 0, i32 10284)
  %244 = call i32 @write_reg(i32 0, i32 10500)
  %245 = call i32 @write_reg(i32 0, i32 10512)
  %246 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %247 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %246, i32 0, i32 40
  %248 = load i32*, i32** %247, align 8
  %249 = icmp ne i32* %248, null
  br i1 %249, label %250, label %265

250:                                              ; preds = %236
  %251 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %252 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %251, i32 0, i32 40
  %253 = load i32*, i32** %252, align 8
  %254 = call i32 @kfree(i32* %253)
  %255 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %256 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %255, i32 0, i32 40
  store i32* null, i32** %256, align 8
  %257 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %258 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %261 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %260, i32 0, i32 39
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %264 = call i32 @pci_unmap_single(i32 %259, i32 %262, i32 11520, i32 %263)
  br label %265

265:                                              ; preds = %250, %236
  %266 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %267 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %266, i32 0, i32 38
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 1
  store i64 0, i64* %268, align 8
  %269 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %270 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %269, i32 0, i32 38
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 0
  store i64 0, i64* %271, align 8
  %272 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %273 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %272, i32 0, i32 37
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 1
  store i64 0, i64* %274, align 8
  %275 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %276 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %275, i32 0, i32 37
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 0
  store i64 0, i64* %277, align 8
  %278 = load i32, i32* @IVTV_F_I_DECODING_YUV, align 4
  %279 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %280 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %279, i32 0, i32 0
  %281 = call i32 @clear_bit(i32 %278, i32* %280)
  ret void
}

declare dso_local i32 @IVTV_DEBUG_YUV(i8*) #1

declare dso_local i32 @ivtv_waitq(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @write_reg(i32, i32) #1

declare dso_local i32 @ivtv_yuv_filter(%struct.ivtv*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
