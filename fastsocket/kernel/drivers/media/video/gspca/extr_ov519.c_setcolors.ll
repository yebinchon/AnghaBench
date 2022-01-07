; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_setcolors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_setcolors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov_i2c_regvals = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@setcolors.colors_7660 = internal constant [5 x [6 x %struct.ov_i2c_regvals]] [[6 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 79, i32 40 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 80, i32 42 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 81, i32 2 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 82, i32 10 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 83, i32 25 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 84, i32 35 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }], [6 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 79, i32 71 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 80, i32 74 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 81, i32 3 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 82, i32 17 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 83, i32 44 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 84, i32 62 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }], [6 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 79, i32 102 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 80, i32 107 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 81, i32 5 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 82, i32 25 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 83, i32 64 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 84, i32 89 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }], [6 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 79, i32 132 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 80, i32 139 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 81, i32 6 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 82, i32 32 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 83, i32 83 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 84, i32 115 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }], [6 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 79, i32 163 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 80, i32 171 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 81, i32 8 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 82, i32 40 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 83, i32 102 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_13__ { i32 84, i32 142 }, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }]], align 16
@COLORS = common dso_local global i64 0, align 8
@OV7610_REG_SAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setcolors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setcolors(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  %7 = load %struct.sd*, %struct.sd** %3, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 1
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %10 = load i64, i64* @COLORS, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.sd*, %struct.sd** %3, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %42 [
    i32 128, label %17
    i32 136, label %17
    i32 129, label %17
    i32 139, label %17
    i32 138, label %17
    i32 137, label %17
    i32 135, label %22
    i32 134, label %22
    i32 133, label %27
    i32 132, label %27
    i32 131, label %33
    i32 130, label %41
  ]

17:                                               ; preds = %1, %1, %1, %1, %1, %1
  %18 = load %struct.sd*, %struct.sd** %3, align 8
  %19 = load i32, i32* @OV7610_REG_SAT, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @i2c_w(%struct.sd* %18, i32 %19, i32 %20)
  br label %42

22:                                               ; preds = %1, %1
  %23 = load %struct.sd*, %struct.sd** %3, align 8
  %24 = load i32, i32* @OV7610_REG_SAT, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @i2c_w(%struct.sd* %23, i32 %24, i32 %25)
  br label %42

27:                                               ; preds = %1, %1
  %28 = load %struct.sd*, %struct.sd** %3, align 8
  %29 = load i32, i32* @OV7610_REG_SAT, align 4
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 240
  %32 = call i32 @i2c_w(%struct.sd* %28, i32 %29, i32 %31)
  br label %42

33:                                               ; preds = %1
  %34 = load %struct.sd*, %struct.sd** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [5 x [6 x %struct.ov_i2c_regvals]], [5 x [6 x %struct.ov_i2c_regvals]]* @setcolors.colors_7660, i64 0, i64 %36
  %38 = getelementptr inbounds [6 x %struct.ov_i2c_regvals], [6 x %struct.ov_i2c_regvals]* %37, i64 0, i64 0
  %39 = call i32 @ARRAY_SIZE(%struct.ov_i2c_regvals* getelementptr inbounds ([5 x [6 x %struct.ov_i2c_regvals]], [5 x [6 x %struct.ov_i2c_regvals]]* @setcolors.colors_7660, i64 0, i64 0, i64 0))
  %40 = call i32 @write_i2c_regvals(%struct.sd* %34, %struct.ov_i2c_regvals* %38, i32 %39)
  br label %42

41:                                               ; preds = %1
  br label %42

42:                                               ; preds = %1, %41, %33, %27, %22, %17
  ret void
}

declare dso_local i32 @i2c_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @write_i2c_regvals(%struct.sd*, %struct.ov_i2c_regvals*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ov_i2c_regvals*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
