; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_sensor_set_backlight.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_sensor_set_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"turn on\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"turn off\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Unsupported with this sensor\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Sensor not supported for set_backlight\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i32)* @sensor_set_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sensor_set_backlight(%struct.usb_ov511* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ov511*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %10 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %12 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %75 [
    i32 131, label %14
    i32 129, label %14
    i32 134, label %33
    i32 133, label %52
    i32 132, label %71
    i32 130, label %71
    i32 136, label %71
    i32 135, label %71
    i32 128, label %71
  ]

14:                                               ; preds = %2, %2
  %15 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 224, i32 192
  %20 = call i32 @i2c_w_mask(%struct.usb_ov511* %15, i32 104, i32 %19, i32 224)
  %21 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 8, i32 0
  %26 = call i32 @i2c_w_mask(%struct.usb_ov511* %21, i32 41, i32 %25, i32 8)
  %27 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 2, i32 0
  %32 = call i32 @i2c_w_mask(%struct.usb_ov511* %27, i32 40, i32 %31, i32 2)
  br label %79

33:                                               ; preds = %2
  %34 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 224, i32 192
  %39 = call i32 @i2c_w_mask(%struct.usb_ov511* %34, i32 78, i32 %38, i32 224)
  %40 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 8, i32 0
  %45 = call i32 @i2c_w_mask(%struct.usb_ov511* %40, i32 41, i32 %44, i32 8)
  %46 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 128, i32 0
  %51 = call i32 @i2c_w_mask(%struct.usb_ov511* %46, i32 14, i32 %50, i32 128)
  br label %79

52:                                               ; preds = %2
  %53 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 128, i32 96
  %58 = call i32 @i2c_w_mask(%struct.usb_ov511* %53, i32 78, i32 %57, i32 224)
  %59 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 8, i32 0
  %64 = call i32 @i2c_w_mask(%struct.usb_ov511* %59, i32 41, i32 %63, i32 8)
  %65 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 2, i32 0
  %70 = call i32 @i2c_w_mask(%struct.usb_ov511* %65, i32 40, i32 %69, i32 2)
  br label %79

71:                                               ; preds = %2, %2, %2, %2, %2
  %72 = call i32 (i32, i8*, ...) @PDEBUG(i32 5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* @EPERM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %83

75:                                               ; preds = %2
  %76 = call i32 @err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %83

79:                                               ; preds = %52, %33, %14
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %82 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %75, %71
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @i2c_w_mask(%struct.usb_ov511*, i32, i32, i32) #1

declare dso_local i32 @err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
