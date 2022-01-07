; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dv1394.c_it_tasklet_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dv1394.c_it_tasklet_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_card = type { i32, i32, i32, i32, i32, i32, i32, i64, %struct.frame**, i32, i32, i32, i32, i32 }
%struct.frame = type { i64, i32, i32, i64*, %struct.TYPE_4__*, %struct.TYPE_3__*, i64, i64*, i64* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [42 x i8] c"ContextControl = %08x, CommandPtr = %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"IRQ checking frame %d...\00", align 1
@FRAME_READY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"clear, skipping\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"DMA\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"  BEGIN\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"  BEGIN - freeing previous frame %d, new active frame is %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"  BEGIN - can't free yet\0A\00", align 1
@.str.7 = private unnamed_addr constant [87 x i8] c"  MIDDLE - first packet was sent at cycle %4u (%2u), assigned timestamp was (%2u) %4u\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"  MIDDLE - next frame is ready, good\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"dv1394: Underflow! At least one frame has been dropped.\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"  END - the frame looped at least once\0A\00", align 1
@SIGIO = common dso_local global i32 0, align 4
@POLL_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @it_tasklet_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it_tasklet_func(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.video_card*, align 8
  %5 = alloca %struct.frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.frame*, align 8
  %10 = alloca %struct.frame*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  %14 = load i64, i64* %2, align 8
  %15 = inttoptr i64 %14 to %struct.video_card*
  store %struct.video_card* %15, %struct.video_card** %4, align 8
  %16 = load %struct.video_card*, %struct.video_card** %4, align 8
  %17 = getelementptr inbounds %struct.video_card, %struct.video_card* %16, i32 0, i32 3
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.video_card*, %struct.video_card** %4, align 8
  %20 = getelementptr inbounds %struct.video_card, %struct.video_card* %19, i32 0, i32 13
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %316

24:                                               ; preds = %1
  %25 = load %struct.video_card*, %struct.video_card** %4, align 8
  %26 = getelementptr inbounds %struct.video_card, %struct.video_card* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.video_card*, %struct.video_card** %4, align 8
  %29 = getelementptr inbounds %struct.video_card, %struct.video_card* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @reg_read(i32 %27, i32 %30)
  %32 = load %struct.video_card*, %struct.video_card** %4, align 8
  %33 = getelementptr inbounds %struct.video_card, %struct.video_card* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.video_card*, %struct.video_card** %4, align 8
  %36 = getelementptr inbounds %struct.video_card, %struct.video_card* %35, i32 0, i32 12
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @reg_read(i32 %34, i32 %37)
  %39 = call i32 (i8*, ...) @irq_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %38)
  %40 = load %struct.video_card*, %struct.video_card** %4, align 8
  %41 = getelementptr inbounds %struct.video_card, %struct.video_card* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %303

44:                                               ; preds = %24
  %45 = load %struct.video_card*, %struct.video_card** %4, align 8
  %46 = getelementptr inbounds %struct.video_card, %struct.video_card* %45, i32 0, i32 11
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.video_card*, %struct.video_card** %4, align 8
  %49 = getelementptr inbounds %struct.video_card, %struct.video_card* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @reg_read(i32 %47, i32 %50)
  %52 = and i32 %51, 1024
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %303

54:                                               ; preds = %44
  %55 = load %struct.video_card*, %struct.video_card** %4, align 8
  %56 = getelementptr inbounds %struct.video_card, %struct.video_card* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %64

60:                                               ; preds = %54
  %61 = load %struct.video_card*, %struct.video_card** %4, align 8
  %62 = getelementptr inbounds %struct.video_card, %struct.video_card* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %59
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %293, %64
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.video_card*, %struct.video_card** %4, align 8
  %68 = getelementptr inbounds %struct.video_card, %struct.video_card* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %71, label %302

71:                                               ; preds = %65
  %72 = load i32, i32* %6, align 4
  %73 = call i32 (i8*, ...) @irq_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load %struct.video_card*, %struct.video_card** %4, align 8
  %75 = getelementptr inbounds %struct.video_card, %struct.video_card* %74, i32 0, i32 8
  %76 = load %struct.frame**, %struct.frame*** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.frame*, %struct.frame** %76, i64 %78
  %80 = load %struct.frame*, %struct.frame** %79, align 8
  store %struct.frame* %80, %struct.frame** %5, align 8
  %81 = load %struct.frame*, %struct.frame** %5, align 8
  %82 = getelementptr inbounds %struct.frame, %struct.frame* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @FRAME_READY, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %71
  %87 = call i32 (i8*, ...) @irq_printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %293

88:                                               ; preds = %71
  %89 = call i32 (i8*, ...) @irq_printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %90 = load %struct.frame*, %struct.frame** %5, align 8
  %91 = getelementptr inbounds %struct.frame, %struct.frame* %90, i32 0, i32 7
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %148

95:                                               ; preds = %88
  %96 = call i32 (i8*, ...) @irq_printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %97 = load i32, i32* %6, align 4
  %98 = sub i32 %97, 1
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.video_card*, %struct.video_card** %4, align 8
  %103 = getelementptr inbounds %struct.video_card, %struct.video_card* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = add i32 %105, %104
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %101, %95
  %108 = load %struct.video_card*, %struct.video_card** %4, align 8
  %109 = getelementptr inbounds %struct.video_card, %struct.video_card* %108, i32 0, i32 8
  %110 = load %struct.frame**, %struct.frame*** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.frame*, %struct.frame** %110, i64 %112
  %114 = load %struct.frame*, %struct.frame** %113, align 8
  store %struct.frame* %114, %struct.frame** %9, align 8
  %115 = load %struct.frame*, %struct.frame** %9, align 8
  %116 = getelementptr inbounds %struct.frame, %struct.frame* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @FRAME_READY, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %143

120:                                              ; preds = %107
  %121 = load %struct.frame*, %struct.frame** %9, align 8
  %122 = getelementptr inbounds %struct.frame, %struct.frame* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %143

125:                                              ; preds = %120
  %126 = load %struct.frame*, %struct.frame** %5, align 8
  %127 = getelementptr inbounds %struct.frame, %struct.frame* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %143, label %130

130:                                              ; preds = %125
  %131 = load %struct.frame*, %struct.frame** %9, align 8
  %132 = call i32 @frame_reset(%struct.frame* %131)
  %133 = load %struct.video_card*, %struct.video_card** %4, align 8
  %134 = getelementptr inbounds %struct.video_card, %struct.video_card* %133, i32 0, i32 9
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 8
  store i32 1, i32* %3, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.video_card*, %struct.video_card** %4, align 8
  %139 = getelementptr inbounds %struct.video_card, %struct.video_card* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %6, align 4
  %142 = call i32 (i8*, ...) @irq_printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 %140, i32 %141)
  br label %145

143:                                              ; preds = %125, %120, %107
  %144 = call i32 (i8*, ...) @irq_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %130
  %146 = load %struct.frame*, %struct.frame** %5, align 8
  %147 = getelementptr inbounds %struct.frame, %struct.frame* %146, i32 0, i32 1
  store i32 1, i32* %147, align 8
  br label %148

148:                                              ; preds = %145, %88
  %149 = load %struct.frame*, %struct.frame** %5, align 8
  %150 = getelementptr inbounds %struct.frame, %struct.frame* %149, i32 0, i32 8
  %151 = load i64*, i64** %150, align 8
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %277

154:                                              ; preds = %148
  %155 = load %struct.frame*, %struct.frame** %5, align 8
  %156 = getelementptr inbounds %struct.frame, %struct.frame* %155, i32 0, i32 8
  %157 = load i64*, i64** %156, align 8
  store i64 0, i64* %157, align 8
  %158 = load %struct.frame*, %struct.frame** %5, align 8
  %159 = getelementptr inbounds %struct.frame, %struct.frame* %158, i32 0, i32 7
  %160 = load i64*, i64** %159, align 8
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @le32_to_cpu(i64 %161)
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = and i32 %163, 8191
  %165 = load i32, i32* %11, align 4
  %166 = and i32 %165, 15
  %167 = load %struct.frame*, %struct.frame** %5, align 8
  %168 = getelementptr inbounds %struct.frame, %struct.frame* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = ashr i32 %169, 12
  %171 = load %struct.frame*, %struct.frame** %5, align 8
  %172 = getelementptr inbounds %struct.frame, %struct.frame* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, 4095
  %175 = call i32 (i8*, ...) @irq_printk(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.7, i64 0, i64 0), i32 %164, i32 %166, i32 %170, i32 %174)
  %176 = load %struct.video_card*, %struct.video_card** %4, align 8
  %177 = getelementptr inbounds %struct.video_card, %struct.video_card* %176, i32 0, i32 8
  %178 = load %struct.frame**, %struct.frame*** %177, align 8
  %179 = load i32, i32* %6, align 4
  %180 = add i32 %179, 1
  %181 = load %struct.video_card*, %struct.video_card** %4, align 8
  %182 = getelementptr inbounds %struct.video_card, %struct.video_card* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = urem i32 %180, %183
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.frame*, %struct.frame** %178, i64 %185
  %187 = load %struct.frame*, %struct.frame** %186, align 8
  store %struct.frame* %187, %struct.frame** %10, align 8
  %188 = load %struct.frame*, %struct.frame** %10, align 8
  %189 = getelementptr inbounds %struct.frame, %struct.frame* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @FRAME_READY, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %154
  %194 = call i32 (i8*, ...) @irq_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  br label %198

195:                                              ; preds = %154
  %196 = call i32 @debug_printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0))
  %197 = load %struct.frame*, %struct.frame** %5, align 8
  store %struct.frame* %197, %struct.frame** %10, align 8
  br label %198

198:                                              ; preds = %195, %193
  %199 = load i32, i32* %11, align 4
  %200 = and i32 %199, 15
  store i32 %200, i32* %12, align 4
  %201 = load %struct.frame*, %struct.frame** %5, align 8
  %202 = getelementptr inbounds %struct.frame, %struct.frame* %201, i32 0, i32 6
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.video_card*, %struct.video_card** %4, align 8
  %205 = getelementptr inbounds %struct.video_card, %struct.video_card* %204, i32 0, i32 7
  %206 = load i64, i64* %205, align 8
  %207 = add nsw i64 %203, %206
  %208 = load i32, i32* %12, align 4
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %209, %207
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %212 = load i32, i32* %13, align 4
  %213 = sdiv i32 %212, 3072
  %214 = load i32, i32* %12, align 4
  %215 = add nsw i32 %214, %213
  store i32 %215, i32* %12, align 4
  %216 = load i32, i32* %13, align 4
  %217 = srem i32 %216, 3072
  store i32 %217, i32* %13, align 4
  %218 = load i32, i32* %12, align 4
  %219 = and i32 %218, 15
  %220 = shl i32 %219, 12
  %221 = load i32, i32* %13, align 4
  %222 = add nsw i32 %220, %221
  %223 = load %struct.frame*, %struct.frame** %10, align 8
  %224 = getelementptr inbounds %struct.frame, %struct.frame* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 4
  %225 = load %struct.frame*, %struct.frame** %10, align 8
  %226 = getelementptr inbounds %struct.frame, %struct.frame* %225, i32 0, i32 5
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %226, align 8
  %228 = icmp ne %struct.TYPE_3__* %227, null
  br i1 %228, label %229, label %250

229:                                              ; preds = %198
  %230 = load %struct.frame*, %struct.frame** %10, align 8
  %231 = getelementptr inbounds %struct.frame, %struct.frame* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = ashr i32 %232, 8
  %234 = load %struct.frame*, %struct.frame** %10, align 8
  %235 = getelementptr inbounds %struct.frame, %struct.frame* %234, i32 0, i32 5
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 6
  store i32 %233, i32* %239, align 4
  %240 = load %struct.frame*, %struct.frame** %10, align 8
  %241 = getelementptr inbounds %struct.frame, %struct.frame* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = and i32 %242, 255
  %244 = load %struct.frame*, %struct.frame** %10, align 8
  %245 = getelementptr inbounds %struct.frame, %struct.frame* %244, i32 0, i32 5
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 7
  store i32 %243, i32* %249, align 4
  br label %250

250:                                              ; preds = %229, %198
  %251 = load %struct.frame*, %struct.frame** %10, align 8
  %252 = getelementptr inbounds %struct.frame, %struct.frame* %251, i32 0, i32 4
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %252, align 8
  %254 = icmp ne %struct.TYPE_4__* %253, null
  br i1 %254, label %255, label %276

255:                                              ; preds = %250
  %256 = load %struct.frame*, %struct.frame** %10, align 8
  %257 = getelementptr inbounds %struct.frame, %struct.frame* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = ashr i32 %258, 8
  %260 = load %struct.frame*, %struct.frame** %10, align 8
  %261 = getelementptr inbounds %struct.frame, %struct.frame* %260, i32 0, i32 4
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 6
  store i32 %259, i32* %265, align 4
  %266 = load %struct.frame*, %struct.frame** %10, align 8
  %267 = getelementptr inbounds %struct.frame, %struct.frame* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = and i32 %268, 255
  %270 = load %struct.frame*, %struct.frame** %10, align 8
  %271 = getelementptr inbounds %struct.frame, %struct.frame* %270, i32 0, i32 4
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 7
  store i32 %269, i32* %275, align 4
  br label %276

276:                                              ; preds = %255, %250
  br label %277

277:                                              ; preds = %276, %148
  %278 = load %struct.frame*, %struct.frame** %5, align 8
  %279 = getelementptr inbounds %struct.frame, %struct.frame* %278, i32 0, i32 3
  %280 = load i64*, i64** %279, align 8
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %292

283:                                              ; preds = %277
  %284 = load %struct.frame*, %struct.frame** %5, align 8
  %285 = getelementptr inbounds %struct.frame, %struct.frame* %284, i32 0, i32 3
  %286 = load i64*, i64** %285, align 8
  store i64 0, i64* %286, align 8
  %287 = call i32 @debug_printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  %288 = load %struct.video_card*, %struct.video_card** %4, align 8
  %289 = getelementptr inbounds %struct.video_card, %struct.video_card* %288, i32 0, i32 6
  %290 = load i32, i32* %289, align 8
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %289, align 8
  br label %292

292:                                              ; preds = %283, %277
  br label %293

293:                                              ; preds = %292, %86
  %294 = load i32, i32* %7, align 4
  %295 = add i32 %294, 1
  store i32 %295, i32* %7, align 4
  %296 = load i32, i32* %6, align 4
  %297 = add i32 %296, 1
  %298 = load %struct.video_card*, %struct.video_card** %4, align 8
  %299 = getelementptr inbounds %struct.video_card, %struct.video_card* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = urem i32 %297, %300
  store i32 %301, i32* %6, align 4
  br label %65

302:                                              ; preds = %65
  br label %303

303:                                              ; preds = %302, %44, %24
  %304 = load i32, i32* %3, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %315

306:                                              ; preds = %303
  %307 = load %struct.video_card*, %struct.video_card** %4, align 8
  %308 = getelementptr inbounds %struct.video_card, %struct.video_card* %307, i32 0, i32 5
  %309 = load i32, i32* @SIGIO, align 4
  %310 = load i32, i32* @POLL_OUT, align 4
  %311 = call i32 @kill_fasync(i32* %308, i32 %309, i32 %310)
  %312 = load %struct.video_card*, %struct.video_card** %4, align 8
  %313 = getelementptr inbounds %struct.video_card, %struct.video_card* %312, i32 0, i32 4
  %314 = call i32 @wake_up_interruptible(i32* %313)
  br label %315

315:                                              ; preds = %306, %303
  br label %316

316:                                              ; preds = %315, %23
  %317 = load %struct.video_card*, %struct.video_card** %4, align 8
  %318 = getelementptr inbounds %struct.video_card, %struct.video_card* %317, i32 0, i32 3
  %319 = call i32 @spin_unlock(i32* %318)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @irq_printk(i8*, ...) #1

declare dso_local i32 @reg_read(i32, i32) #1

declare dso_local i32 @frame_reset(%struct.frame*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @debug_printk(i8*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
