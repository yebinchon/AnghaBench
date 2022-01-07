; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_sensor_get_exposure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_sensor_get_exposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32, i8 }

@.str = private unnamed_addr constant [29 x i8] c"Unsupported with this sensor\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Sensor not supported for get_exposure\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i8*)* @sensor_get_exposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sensor_get_exposure(%struct.usb_ov511* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ov511*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %8 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %26 [
    i32 132, label %10
    i32 134, label %10
    i32 133, label %10
    i32 131, label %10
    i32 130, label %10
    i32 129, label %10
    i32 136, label %22
    i32 135, label %22
    i32 128, label %22
  ]

10:                                               ; preds = %2, %2, %2, %2, %2, %2
  %11 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %12 = call i32 @i2c_r(%struct.usb_ov511* %11, i32 16)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %39

17:                                               ; preds = %10
  %18 = load i32, i32* %6, align 4
  %19 = trunc i32 %18 to i8
  %20 = load i8*, i8** %5, align 8
  store i8 %19, i8* %20, align 1
  br label %21

21:                                               ; preds = %17
  br label %30

22:                                               ; preds = %2, %2, %2
  store i8* null, i8** %5, align 8
  %23 = call i32 (i32, i8*, ...) @PDEBUG(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %39

26:                                               ; preds = %2
  %27 = call i32 @err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %39

30:                                               ; preds = %21
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = call i32 (i32, i8*, ...) @PDEBUG(i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %38 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %37, i32 0, i32 1
  store i8 %36, i8* %38, align 4
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %30, %26, %22, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @i2c_r(%struct.usb_ov511*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
