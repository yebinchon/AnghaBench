; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_mt9m001_init_sensor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_mt9m001_init_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"MT9M001 color sensor detected\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"MT9M001 mono sensor detected\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"No MT9M001 chip detected, ID = %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@mt9m001_init = common dso_local global %struct.TYPE_3__* null, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"MT9M001 sensor initialization failed\00", align 1
@HFLIP_IDX = common dso_local global i32 0, align 4
@VFLIP_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @mt9m001_init_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m001_init_sensor(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %4, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = call i64 @i2c_r2(%struct.gspca_dev* %9, i32 0, i32* %6)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %68

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %21 [
    i32 33809, label %17
    i32 33825, label %17
    i32 33841, label %19
  ]

17:                                               ; preds = %15, %15
  %18 = call i32 @info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %26

19:                                               ; preds = %15
  %20 = call i32 @info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %26

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %68

26:                                               ; preds = %19, %17
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %53, %26
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mt9m001_init, align 8
  %30 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %29)
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %27
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mt9m001_init, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mt9m001_init, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @i2c_w2(%struct.gspca_dev* %33, i32 %39, i32 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %32
  %49 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %68

52:                                               ; preds = %32
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %27

56:                                               ; preds = %27
  %57 = load i32, i32* @HFLIP_IDX, align 4
  %58 = shl i32 1, %57
  %59 = load i32, i32* @VFLIP_IDX, align 4
  %60 = shl i32 1, %59
  %61 = or i32 %58, %60
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %63 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.sd*, %struct.sd** %4, align 8
  %65 = getelementptr inbounds %struct.sd, %struct.sd* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  %66 = load %struct.sd*, %struct.sd** %4, align 8
  %67 = getelementptr inbounds %struct.sd, %struct.sd* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %56, %48, %21, %12
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @i2c_r2(%struct.gspca_dev*, i32, i32*) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @i2c_w2(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
