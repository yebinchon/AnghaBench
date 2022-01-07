; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9966.c_w9966_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9966.c_w9966_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w9966_dev = type { i32, i32, i8, i8, i8, i8, i8 }

@__const.w9966_setup.saa7111_regs = private unnamed_addr constant [32 x i8] c"!\00\D8#\00\80\80\00\88\10\80@@\00\01\00H\0C\00\00\00\00\00\00\00\00\00q\E7\00\00\C0", align 16
@W9966_SRAMSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"capture window exceeds SRAM size!.\0A\00", align 1
@W9966_WND_MAX_W = common dso_local global i32 0, align 4
@W9966_WND_MAX_H = common dso_local global i32 0, align 4
@W9966_WND_MIN_X = common dso_local global i32 0, align 4
@W9966_WND_MAX_X = common dso_local global i32 0, align 4
@W9966_WND_MIN_Y = common dso_local global i32 0, align 4
@W9966_WND_MAX_Y = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"%dx%d, x: %d<->%d, y: %d<->%d, sx: %d/64, sy: %d/64.\0A\00", align 1
@W9966_SRAMID = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w9966_dev*, i32, i32, i32, i32, i32, i32)* @w9966_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w9966_setup(%struct.w9966_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.w9966_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca [28 x i8], align 16
  %22 = alloca [32 x i8], align 16
  store %struct.w9966_dev* %0, %struct.w9966_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %23 = bitcast [32 x i8]* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @__const.w9966_setup.saa7111_regs, i32 0, i32 0), i64 32, i1 false)
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %15, align 4
  %26 = mul nsw i32 %24, %25
  %27 = mul nsw i32 %26, 2
  %28 = load i32, i32* @W9966_SRAMSIZE, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %7
  %31 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 200, i32* %14, align 4
  store i32 160, i32* %15, align 4
  br label %32

32:                                               ; preds = %30, %7
  %33 = load i32, i32* %14, align 4
  %34 = and i32 %33, -2
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 2, i32* %14, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i32, i32* %15, align 4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 1, i32* %15, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @W9966_WND_MAX_W, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @W9966_WND_MAX_W, align 4
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @W9966_WND_MAX_H, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @W9966_WND_MAX_H, align 4
  store i32 %53, i32* %15, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.w9966_dev*, %struct.w9966_dev** %9, align 8
  %57 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load %struct.w9966_dev*, %struct.w9966_dev** %9, align 8
  %60 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  store i32 0, i32* %17, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = mul nsw i32 %61, %62
  %64 = mul nsw i32 %63, 2
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @W9966_WND_MIN_X, align 4
  %67 = load i32, i32* @W9966_WND_MAX_X, align 4
  %68 = call i64 @w9966_calcscale(i32 %65, i32 %66, i32 %67, i32* %10, i32* %12, i8* %19)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %54
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* @W9966_WND_MIN_Y, align 4
  %73 = load i32, i32* @W9966_WND_MAX_Y, align 4
  %74 = call i64 @w9966_calcscale(i32 %71, i32 %72, i32 %73, i32* %11, i32* %13, i8* %20)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70, %54
  store i32 -1, i32* %8, align 4
  br label %223

77:                                               ; preds = %70
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i8, i8* %19, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, -129
  %87 = load i8, i8* %20, align 1
  %88 = zext i8 %87 to i32
  %89 = and i32 %88, -129
  %90 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %86, i32 %89)
  %91 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 0
  store i8 0, i8* %91, align 16
  %92 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 1
  store i8 24, i8* %92, align 1
  %93 = load i8, i8* %20, align 1
  %94 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 2
  store i8 %93, i8* %94, align 2
  %95 = load i8, i8* %19, align 1
  %96 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 3
  store i8 %95, i8* %96, align 1
  %97 = load i32, i32* %10, align 4
  %98 = and i32 %97, 255
  %99 = trunc i32 %98 to i8
  %100 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 4
  store i8 %99, i8* %100, align 4
  %101 = load i32, i32* %10, align 4
  %102 = and i32 %101, 768
  %103 = ashr i32 %102, 8
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 5
  store i8 %104, i8* %105, align 1
  %106 = load i32, i32* %11, align 4
  %107 = and i32 %106, 255
  %108 = trunc i32 %107 to i8
  %109 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 6
  store i8 %108, i8* %109, align 2
  %110 = load i32, i32* %11, align 4
  %111 = and i32 %110, 768
  %112 = ashr i32 %111, 8
  %113 = trunc i32 %112 to i8
  %114 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 7
  store i8 %113, i8* %114, align 1
  %115 = load i32, i32* %12, align 4
  %116 = and i32 %115, 255
  %117 = trunc i32 %116 to i8
  %118 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 8
  store i8 %117, i8* %118, align 8
  %119 = load i32, i32* %12, align 4
  %120 = and i32 %119, 768
  %121 = ashr i32 %120, 8
  %122 = trunc i32 %121 to i8
  %123 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 9
  store i8 %122, i8* %123, align 1
  %124 = load i32, i32* %13, align 4
  %125 = and i32 %124, 255
  %126 = trunc i32 %125 to i8
  %127 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 10
  store i8 %126, i8* %127, align 2
  %128 = load i8, i8* @W9966_SRAMID, align 1
  %129 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 12
  store i8 %128, i8* %129, align 4
  %130 = load i32, i32* %17, align 4
  %131 = and i32 %130, 255
  %132 = trunc i32 %131 to i8
  %133 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 13
  store i8 %132, i8* %133, align 1
  %134 = load i32, i32* %17, align 4
  %135 = and i32 %134, 65280
  %136 = lshr i32 %135, 8
  %137 = trunc i32 %136 to i8
  %138 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 14
  store i8 %137, i8* %138, align 2
  %139 = load i32, i32* %17, align 4
  %140 = and i32 %139, 458752
  %141 = lshr i32 %140, 16
  %142 = trunc i32 %141 to i8
  %143 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 15
  store i8 %142, i8* %143, align 1
  %144 = load i32, i32* %18, align 4
  %145 = and i32 %144, 255
  %146 = trunc i32 %145 to i8
  %147 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 16
  store i8 %146, i8* %147, align 16
  %148 = load i32, i32* %18, align 4
  %149 = and i32 %148, 65280
  %150 = lshr i32 %149, 8
  %151 = trunc i32 %150 to i8
  %152 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 17
  store i8 %151, i8* %152, align 1
  %153 = load i32, i32* %18, align 4
  %154 = and i32 %153, 458752
  %155 = lshr i32 %154, 16
  %156 = trunc i32 %155 to i8
  %157 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 18
  store i8 %156, i8* %157, align 2
  %158 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 19
  store i8 64, i8* %158, align 1
  %159 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 23
  store i8 0, i8* %159, align 1
  %160 = load %struct.w9966_dev*, %struct.w9966_dev** %9, align 8
  %161 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %160, i32 0, i32 2
  store i8 0, i8* %161, align 4
  %162 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 24
  store i8 0, i8* %162, align 8
  %163 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 25
  store i8 -1, i8* %163, align 1
  %164 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 26
  store i8 -1, i8* %164, align 2
  %165 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 27
  store i8 16, i8* %165, align 1
  %166 = load %struct.w9966_dev*, %struct.w9966_dev** %9, align 8
  %167 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %166, i32 0, i32 3
  %168 = load i8, i8* %167, align 1
  %169 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 10
  store i8 %168, i8* %169, align 2
  %170 = load %struct.w9966_dev*, %struct.w9966_dev** %9, align 8
  %171 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %170, i32 0, i32 4
  %172 = load i8, i8* %171, align 2
  %173 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 11
  store i8 %172, i8* %173, align 1
  %174 = load %struct.w9966_dev*, %struct.w9966_dev** %9, align 8
  %175 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %174, i32 0, i32 5
  %176 = load i8, i8* %175, align 1
  %177 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 12
  store i8 %176, i8* %177, align 4
  %178 = load %struct.w9966_dev*, %struct.w9966_dev** %9, align 8
  %179 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %178, i32 0, i32 6
  %180 = load i8, i8* %179, align 4
  %181 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 13
  store i8 %180, i8* %181, align 1
  %182 = load %struct.w9966_dev*, %struct.w9966_dev** %9, align 8
  %183 = call i32 @w9966_wReg(%struct.w9966_dev* %182, i32 0, i8 zeroext 3)
  %184 = icmp eq i32 %183, -1
  br i1 %184, label %185, label %186

185:                                              ; preds = %77
  store i32 -1, i32* %8, align 4
  br label %223

186:                                              ; preds = %77
  store i32 0, i32* %16, align 4
  br label %187

187:                                              ; preds = %201, %186
  %188 = load i32, i32* %16, align 4
  %189 = icmp ult i32 %188, 28
  br i1 %189, label %190, label %204

190:                                              ; preds = %187
  %191 = load %struct.w9966_dev*, %struct.w9966_dev** %9, align 8
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* %16, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds [28 x i8], [28 x i8]* %21, i64 0, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = call i32 @w9966_wReg(%struct.w9966_dev* %191, i32 %192, i8 zeroext %196)
  %198 = icmp eq i32 %197, -1
  br i1 %198, label %199, label %200

199:                                              ; preds = %190
  store i32 -1, i32* %8, align 4
  br label %223

200:                                              ; preds = %190
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %16, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %16, align 4
  br label %187

204:                                              ; preds = %187
  store i32 0, i32* %16, align 4
  br label %205

205:                                              ; preds = %219, %204
  %206 = load i32, i32* %16, align 4
  %207 = icmp ult i32 %206, 32
  br i1 %207, label %208, label %222

208:                                              ; preds = %205
  %209 = load %struct.w9966_dev*, %struct.w9966_dev** %9, align 8
  %210 = load i32, i32* %16, align 4
  %211 = load i32, i32* %16, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 %212
  %214 = load i8, i8* %213, align 1
  %215 = call i32 @w9966_wReg_i2c(%struct.w9966_dev* %209, i32 %210, i8 zeroext %214)
  %216 = icmp eq i32 %215, -1
  br i1 %216, label %217, label %218

217:                                              ; preds = %208
  store i32 -1, i32* %8, align 4
  br label %223

218:                                              ; preds = %208
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %16, align 4
  %221 = add i32 %220, 1
  store i32 %221, i32* %16, align 4
  br label %205

222:                                              ; preds = %205
  store i32 0, i32* %8, align 4
  br label %223

223:                                              ; preds = %222, %217, %199, %185, %76
  %224 = load i32, i32* %8, align 4
  ret i32 %224
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @DPRINTF(i8*, ...) #2

declare dso_local i64 @w9966_calcscale(i32, i32, i32, i32*, i32*, i8*) #2

declare dso_local i32 @w9966_wReg(%struct.w9966_dev*, i32, i8 zeroext) #2

declare dso_local i32 @w9966_wReg_i2c(%struct.w9966_dev*, i32, i8 zeroext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
