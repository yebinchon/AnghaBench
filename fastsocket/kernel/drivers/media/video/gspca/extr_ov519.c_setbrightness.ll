; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_setbrightness.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_setbrightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov_i2c_regvals = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@setbrightness.brit_7660 = internal constant [7 x [7 x %struct.ov_i2c_regvals]] [[7 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 15, i32 106 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 36, i32 64 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 37, i32 43 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 38, i32 144 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 39, i32 224 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 40, i32 224 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 44, i32 224 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }], [7 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 15, i32 106 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 36, i32 80 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 37, i32 64 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 38, i32 161 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 39, i32 192 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 40, i32 192 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 44, i32 192 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }], [7 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 15, i32 106 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 36, i32 104 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 37, i32 88 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 38, i32 194 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 39, i32 160 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 40, i32 160 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 44, i32 160 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }], [7 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 15, i32 106 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 36, i32 112 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 37, i32 104 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 38, i32 211 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 39, i32 128 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 40, i32 128 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 44, i32 128 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }], [7 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 15, i32 106 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 36, i32 128 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 37, i32 112 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 38, i32 211 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 39, i32 32 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 40, i32 32 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 44, i32 32 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }], [7 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 15, i32 106 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 36, i32 136 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 37, i32 120 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 38, i32 211 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 39, i32 64 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 40, i32 64 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 44, i32 64 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }], [7 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 15, i32 106 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 36, i32 144 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 37, i32 128 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 38, i32 212 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 39, i32 96 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 40, i32 96 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_15__ { i32 44, i32 96 }, %struct.TYPE_14__ zeroinitializer, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer }]], align 16
@BRIGHTNESS = common dso_local global i64 0, align 8
@OV7610_REG_BRT = common dso_local global i32 0, align 4
@AUTOBRIGHT = common dso_local global i64 0, align 8
@OV7670_R55_BRIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setbrightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setbrightness(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  %7 = load %struct.sd*, %struct.sd** %3, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 1
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %10 = load i64, i64* @BRIGHTNESS, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.sd*, %struct.sd** %3, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %51 [
    i32 128, label %17
    i32 136, label %17
    i32 129, label %17
    i32 139, label %17
    i32 138, label %17
    i32 137, label %17
    i32 133, label %17
    i32 132, label %17
    i32 135, label %22
    i32 134, label %22
    i32 131, label %37
    i32 130, label %45
  ]

17:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %18 = load %struct.sd*, %struct.sd** %3, align 8
  %19 = load i32, i32* @OV7610_REG_BRT, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @i2c_w(%struct.sd* %18, i32 %19, i32 %20)
  br label %51

22:                                               ; preds = %1, %1
  %23 = load %struct.sd*, %struct.sd** %3, align 8
  %24 = getelementptr inbounds %struct.sd, %struct.sd* %23, i32 0, i32 1
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = load i64, i64* @AUTOBRIGHT, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %22
  %32 = load %struct.sd*, %struct.sd** %3, align 8
  %33 = load i32, i32* @OV7610_REG_BRT, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @i2c_w(%struct.sd* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %22
  br label %51

37:                                               ; preds = %1
  %38 = load %struct.sd*, %struct.sd** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [7 x [7 x %struct.ov_i2c_regvals]], [7 x [7 x %struct.ov_i2c_regvals]]* @setbrightness.brit_7660, i64 0, i64 %40
  %42 = getelementptr inbounds [7 x %struct.ov_i2c_regvals], [7 x %struct.ov_i2c_regvals]* %41, i64 0, i64 0
  %43 = call i32 @ARRAY_SIZE(%struct.ov_i2c_regvals* getelementptr inbounds ([7 x [7 x %struct.ov_i2c_regvals]], [7 x [7 x %struct.ov_i2c_regvals]]* @setbrightness.brit_7660, i64 0, i64 0, i64 0))
  %44 = call i32 @write_i2c_regvals(%struct.sd* %38, %struct.ov_i2c_regvals* %42, i32 %43)
  br label %51

45:                                               ; preds = %1
  %46 = load %struct.sd*, %struct.sd** %3, align 8
  %47 = load i32, i32* @OV7670_R55_BRIGHT, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @ov7670_abs_to_sm(i32 %48)
  %50 = call i32 @i2c_w(%struct.sd* %46, i32 %47, i32 %49)
  br label %51

51:                                               ; preds = %1, %45, %37, %36, %17
  ret void
}

declare dso_local i32 @i2c_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @write_i2c_regvals(%struct.sd*, %struct.ov_i2c_regvals*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ov_i2c_regvals*) #1

declare dso_local i32 @ov7670_abs_to_sm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
