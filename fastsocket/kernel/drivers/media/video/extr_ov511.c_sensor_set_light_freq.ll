; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_sensor_set_light_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_sensor_set_light_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%d Hz\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid light freq (%d Hz)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Unsupported with this sensor\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Sensor not supported for set_light_freq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i32)* @sensor_set_light_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sensor_set_light_freq(%struct.usb_ov511* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ov511*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 60
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %22

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 50
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %21

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %83

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %11
  %23 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %24 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %75 [
    i32 132, label %26
    i32 131, label %43
    i32 130, label %43
    i32 129, label %43
    i32 134, label %58
    i32 133, label %58
    i32 136, label %71
    i32 135, label %71
    i32 128, label %71
  ]

26:                                               ; preds = %22
  %27 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 0, i32 128
  %32 = call i32 @i2c_w_mask(%struct.usb_ov511* %27, i32 42, i32 %31, i32 128)
  %33 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 172
  %38 = call i32 @i2c_w(%struct.usb_ov511* %33, i32 43, i32 %37)
  %39 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %40 = call i32 @i2c_w_mask(%struct.usb_ov511* %39, i32 19, i32 16, i32 16)
  %41 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %42 = call i32 @i2c_w_mask(%struct.usb_ov511* %41, i32 19, i32 0, i32 16)
  br label %79

43:                                               ; preds = %22, %22, %22
  %44 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 0, i32 128
  %49 = call i32 @i2c_w_mask(%struct.usb_ov511* %44, i32 42, i32 %48, i32 128)
  %50 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 0, i32 172
  %55 = call i32 @i2c_w(%struct.usb_ov511* %50, i32 43, i32 %54)
  %56 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %57 = call i32 @i2c_w_mask(%struct.usb_ov511* %56, i32 118, i32 1, i32 1)
  br label %79

58:                                               ; preds = %22, %22
  %59 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 168, i32 40
  %64 = call i32 @i2c_w(%struct.usb_ov511* %59, i32 43, i32 %63)
  %65 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 132, i32 164
  %70 = call i32 @i2c_w(%struct.usb_ov511* %65, i32 42, i32 %69)
  br label %79

71:                                               ; preds = %22, %22, %22
  %72 = call i32 (i32, i8*, ...) @PDEBUG(i32 5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @EPERM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %83

75:                                               ; preds = %22
  %76 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %83

79:                                               ; preds = %58, %43, %26
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %82 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %75, %71, %16
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @i2c_w_mask(%struct.usb_ov511*, i32, i32, i32) #1

declare dso_local i32 @i2c_w(%struct.usb_ov511*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
