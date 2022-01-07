; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_ov7630_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_ov7630_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sd = type { i32, i32 }

@SENSOR_SOI768 = common dso_local global i32 0, align 4
@V4L2_IN_ST_VFLIP = common dso_local global i32 0, align 4
@V4L2_IN_ST_HFLIP = common dso_local global i32 0, align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Sensor soi768\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Sensor ov%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @ov7630_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov7630_probe(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = call i32 @reg_w1(%struct.gspca_dev* %7, i32 23, i32 98)
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = call i32 @reg_w1(%struct.gspca_dev* %9, i32 1, i32 8)
  %11 = load %struct.sd*, %struct.sd** %3, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 0
  store i32 33, i32* %12, align 4
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %14 = call i32 @i2c_r(%struct.gspca_dev* %13, i32 10, i32 2)
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 8
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %22 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %20, %25
  store i32 %26, i32* %4, align 4
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %28 = call i32 @reg_w1(%struct.gspca_dev* %27, i32 1, i32 41)
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %30 = call i32 @reg_w1(%struct.gspca_dev* %29, i32 23, i32 66)
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %32 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  br label %55

36:                                               ; preds = %1
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 30248
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load i32, i32* @SENSOR_SOI768, align 4
  %41 = load %struct.sd*, %struct.sd** %3, align 8
  %42 = getelementptr inbounds %struct.sd, %struct.sd* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @V4L2_IN_ST_VFLIP, align 4
  %44 = load i32, i32* @V4L2_IN_ST_HFLIP, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %47 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* @D_PROBE, align 4
  %50 = call i32 (i32, i8*, ...) @PDEBUG(i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %55

51:                                               ; preds = %36
  %52 = load i32, i32* @D_PROBE, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i32, i8*, ...) @PDEBUG(i32 %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %39, %35
  ret void
}

declare dso_local i32 @reg_w1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @i2c_r(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
