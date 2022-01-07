; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-i2c.c_em2800_i2c_check_for_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-i2c.c_em2800_i2c_check_for_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32 (%struct.em28xx*, i32, i8*, i32)*, i32 (%struct.em28xx*, i32)* }

@.str = private unnamed_addr constant [46 x i8] c"setting i2c device address failed (error=%i)\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"preparing i2c read failed (error=%i)\0A\00", align 1
@EM2800_I2C_WRITE_TIMEOUT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*, i8)* @em2800_i2c_check_for_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em2800_i2c_check_for_device(%struct.em28xx* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.em28xx*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %4, align 8
  store i8 %1, i8* %5, align 1
  %10 = load i8, i8* %5, align 1
  store i8 %10, i8* %6, align 1
  %11 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %12 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %11, i32 0, i32 0
  %13 = load i32 (%struct.em28xx*, i32, i8*, i32)*, i32 (%struct.em28xx*, i32, i8*, i32)** %12, align 8
  %14 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %15 = call i32 %13(%struct.em28xx* %14, i32 4, i8* %6, i32 1)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @em28xx_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %63

22:                                               ; preds = %2
  store i8 -124, i8* %6, align 1
  %23 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %24 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %23, i32 0, i32 0
  %25 = load i32 (%struct.em28xx*, i32, i8*, i32)*, i32 (%struct.em28xx*, i32, i8*, i32)** %24, align 8
  %26 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %27 = call i32 %25(%struct.em28xx* %26, i32 5, i8* %6, i32 1)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @em28xx_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %63

34:                                               ; preds = %22
  %35 = load i32, i32* @EM2800_I2C_WRITE_TIMEOUT, align 4
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %57, %34
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %36
  %40 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %41 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %40, i32 0, i32 1
  %42 = load i32 (%struct.em28xx*, i32)*, i32 (%struct.em28xx*, i32)** %41, align 8
  %43 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %44 = call i32 %42(%struct.em28xx* %43, i32 5)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 148
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %63

50:                                               ; preds = %39
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 132
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %63

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54
  %56 = call i32 @msleep(i32 5)
  br label %57

57:                                               ; preds = %55
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %58, 5
  store i32 %59, i32* %8, align 4
  br label %36

60:                                               ; preds = %36
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %53, %47, %30, %18
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @em28xx_warn(i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
