; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_sensor_get_saturation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_sensor_get_saturation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32, i16 }

@OV7610_REG_SAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unsupported with this sensor\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i16*)* @sensor_get_saturation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sensor_get_saturation(%struct.usb_ov511* %0, i16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ov511*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %4, align 8
  store i16* %1, i16** %5, align 8
  %7 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %8 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %43 [
    i32 131, label %10
    i32 129, label %10
    i32 133, label %10
    i32 132, label %10
    i32 130, label %24
    i32 128, label %38
  ]

10:                                               ; preds = %2, %2, %2, %2
  %11 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %12 = load i32, i32* @OV7610_REG_SAT, align 4
  %13 = call i32 @i2c_r(%struct.usb_ov511* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %56

18:                                               ; preds = %10
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 %19, 8
  %21 = trunc i32 %20 to i16
  %22 = load i16*, i16** %5, align 8
  store i16 %21, i16* %22, align 2
  br label %23

23:                                               ; preds = %18
  br label %47

24:                                               ; preds = %2
  %25 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %26 = load i32, i32* @OV7610_REG_SAT, align 4
  %27 = call i32 @i2c_r(%struct.usb_ov511* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %56

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 %33, 8
  %35 = trunc i32 %34 to i16
  %36 = load i16*, i16** %5, align 8
  store i16 %35, i16* %36, align 2
  br label %37

37:                                               ; preds = %32
  br label %47

38:                                               ; preds = %2
  %39 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %40 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %39, i32 0, i32 1
  %41 = load i16, i16* %40, align 4
  %42 = load i16*, i16** %5, align 8
  store i16 %41, i16* %42, align 2
  br label %47

43:                                               ; preds = %2
  %44 = call i32 (i32, i8*, ...) @PDEBUG(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EPERM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %56

47:                                               ; preds = %38, %37, %23
  %48 = load i16*, i16** %5, align 8
  %49 = load i16, i16* %48, align 2
  %50 = zext i16 %49 to i32
  %51 = call i32 (i32, i8*, ...) @PDEBUG(i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i16*, i16** %5, align 8
  %53 = load i16, i16* %52, align 2
  %54 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %55 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %54, i32 0, i32 1
  store i16 %53, i16* %55, align 4
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %47, %43, %30, %16
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @i2c_r(%struct.usb_ov511*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
