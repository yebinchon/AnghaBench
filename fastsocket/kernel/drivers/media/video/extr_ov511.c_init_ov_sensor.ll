; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_init_ov_sensor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_init_ov_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32 }

@EIO = common dso_local global i32 0, align 4
@i2c_detect_tries = common dso_local global i32 0, align 4
@OV7610_REG_ID_HIGH = common dso_local global i32 0, align 4
@OV7610_REG_ID_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"I2C synced in %d attempt(s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*)* @init_ov_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_ov_sensor(%struct.usb_ov511* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ov511*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %3, align 8
  %6 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %7 = call i64 @i2c_w(%struct.usb_ov511* %6, i32 18, i32 128)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %63

12:                                               ; preds = %1
  %13 = call i32 @msleep(i32 150)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %51, %12
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @i2c_detect_tries, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %54

24:                                               ; preds = %22
  %25 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %26 = load i32, i32* @OV7610_REG_ID_HIGH, align 4
  %27 = call i64 @i2c_r(%struct.usb_ov511* %25, i32 %26)
  %28 = icmp eq i64 %27, 127
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %31 = load i32, i32* @OV7610_REG_ID_LOW, align 4
  %32 = call i64 @i2c_r(%struct.usb_ov511* %30, i32 %31)
  %33 = icmp eq i64 %32, 162
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  br label %51

35:                                               ; preds = %29, %24
  %36 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %37 = call i64 @i2c_w(%struct.usb_ov511* %36, i32 18, i32 128)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %63

42:                                               ; preds = %35
  %43 = call i32 @msleep(i32 150)
  %44 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %45 = call i64 @i2c_r(%struct.usb_ov511* %44, i32 0)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %63

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %34
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %14

54:                                               ; preds = %22
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %63

60:                                               ; preds = %54
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @PDEBUG(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %60, %57, %47, %39, %9
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @i2c_w(%struct.usb_ov511*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @i2c_r(%struct.usb_ov511*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
