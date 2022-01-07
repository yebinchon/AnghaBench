; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-i2c.c_em28xx_i2c_check_for_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-i2c.c_em28xx_i2c_check_for_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32 (%struct.em28xx*, i32, i8)*, i64 (%struct.em28xx*, i32)* }

@.str = private unnamed_addr constant [43 x i8] c"reading from i2c device failed (error=%i)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*, i8)* @em28xx_i2c_check_for_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_i2c_check_for_device(%struct.em28xx* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.em28xx*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load i8, i8* %5, align 1
  store i8 %8, i8* %6, align 1
  %9 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %10 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %9, i32 0, i32 0
  %11 = load i32 (%struct.em28xx*, i32, i8)*, i32 (%struct.em28xx*, i32, i8)** %10, align 8
  %12 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %13 = load i8, i8* %5, align 1
  %14 = call i32 %11(%struct.em28xx* %12, i32 2, i8 zeroext %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @em28xx_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %32

21:                                               ; preds = %2
  %22 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %23 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %22, i32 0, i32 1
  %24 = load i64 (%struct.em28xx*, i32)*, i64 (%struct.em28xx*, i32)** %23, align 8
  %25 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %26 = call i64 %24(%struct.em28xx* %25, i32 5)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %28, %17
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @em28xx_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
