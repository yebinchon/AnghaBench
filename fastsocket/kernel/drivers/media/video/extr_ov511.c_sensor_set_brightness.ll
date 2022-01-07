; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_sensor_set_brightness.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_sensor_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32, i16, i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EIO = common dso_local global i32 0, align 4
@OV7610_REG_BRT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unsupported with this sensor\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i16)* @sensor_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sensor_set_brightness(%struct.usb_ov511* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ov511*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %4, align 8
  store i16 %1, i16* %5, align 2
  %7 = load i16, i16* %5, align 2
  %8 = zext i16 %7 to i32
  %9 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %11 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %16 = call i64 @ov51x_stop(%struct.usb_ov511* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %84

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %2
  %23 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %24 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %67 [
    i32 131, label %26
    i32 129, label %26
    i32 133, label %26
    i32 132, label %26
    i32 130, label %38
    i32 128, label %56
  ]

26:                                               ; preds = %22, %22, %22, %22
  %27 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %28 = load i32, i32* @OV7610_REG_BRT, align 4
  %29 = load i16, i16* %5, align 2
  %30 = zext i16 %29 to i32
  %31 = ashr i32 %30, 8
  %32 = trunc i32 %31 to i16
  %33 = call i32 @i2c_w(%struct.usb_ov511* %27, i32 %28, i16 zeroext %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %75

37:                                               ; preds = %26
  br label %71

38:                                               ; preds = %22
  %39 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %40 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %38
  %44 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %45 = load i32, i32* @OV7610_REG_BRT, align 4
  %46 = load i16, i16* %5, align 2
  %47 = zext i16 %46 to i32
  %48 = ashr i32 %47, 8
  %49 = trunc i32 %48 to i16
  %50 = call i32 @i2c_w(%struct.usb_ov511* %44, i32 %45, i16 zeroext %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %75

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %38
  br label %71

56:                                               ; preds = %22
  %57 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %58 = load i16, i16* %5, align 2
  %59 = zext i16 %58 to i32
  %60 = ashr i32 %59, 8
  %61 = trunc i32 %60 to i16
  %62 = call i32 @i2c_w(%struct.usb_ov511* %57, i32 10, i16 zeroext %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %75

66:                                               ; preds = %56
  br label %71

67:                                               ; preds = %22
  %68 = call i32 (i32, i8*, ...) @PDEBUG(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @EPERM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %75

71:                                               ; preds = %66, %55, %37
  store i32 0, i32* %6, align 4
  %72 = load i16, i16* %5, align 2
  %73 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %74 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %73, i32 0, i32 1
  store i16 %72, i16* %74, align 4
  br label %75

75:                                               ; preds = %71, %67, %65, %53, %36
  %76 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %77 = call i64 @ov51x_restart(%struct.usb_ov511* %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %79, %18
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i64 @ov51x_stop(%struct.usb_ov511*) #1

declare dso_local i32 @i2c_w(%struct.usb_ov511*, i32, i16 zeroext) #1

declare dso_local i64 @ov51x_restart(%struct.usb_ov511*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
