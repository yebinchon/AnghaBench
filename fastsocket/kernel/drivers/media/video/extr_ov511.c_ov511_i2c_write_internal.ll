; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov511_i2c_write_internal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov511_i2c_write_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"0x%02X:0x%02X\00", align 1
@OV511_I2C_RETRIES = common dso_local global i32 0, align 4
@R51x_I2C_SADDR_3 = common dso_local global i32 0, align 4
@R51x_I2C_DATA = common dso_local global i32 0, align 4
@R511_I2C_CTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"i2c write retries exhausted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i8, i8)* @ov511_i2c_write_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov511_i2c_write_internal(%struct.usb_ov511* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.usb_ov511*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %9 = load i8, i8* %5, align 1
  %10 = load i8, i8* %6, align 1
  %11 = call i32 @PDEBUG(i32 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8 zeroext %9, i8 zeroext %10)
  %12 = load i32, i32* @OV511_I2C_RETRIES, align 4
  store i32 %12, i32* %8, align 4
  br label %13

13:                                               ; preds = %67, %3
  %14 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %15 = load i32, i32* @R51x_I2C_SADDR_3, align 4
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i32
  %18 = call i32 @reg_w(%struct.usb_ov511* %14, i32 %15, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %68

22:                                               ; preds = %13
  %23 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %24 = load i32, i32* @R51x_I2C_DATA, align 4
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i32
  %27 = call i32 @reg_w(%struct.usb_ov511* %23, i32 %24, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %68

31:                                               ; preds = %22
  %32 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %33 = load i32, i32* @R511_I2C_CTL, align 4
  %34 = call i32 @reg_w(%struct.usb_ov511* %32, i32 %33, i32 1)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %68

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %50, %38
  %40 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %41 = load i32, i32* @R511_I2C_CTL, align 4
  %42 = call i32 @reg_r(%struct.usb_ov511* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br label %50

50:                                               ; preds = %46, %43
  %51 = phi i1 [ false, %43 ], [ %49, %46 ]
  br i1 %51, label %39, label %52

52:                                               ; preds = %50
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %68

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %68

61:                                               ; preds = %56
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 @err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %68

67:                                               ; preds = %61
  br label %13

68:                                               ; preds = %65, %60, %55, %37, %30, %21
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local i32 @PDEBUG(i32, i8*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @reg_w(%struct.usb_ov511*, i32, i32) #1

declare dso_local i32 @reg_r(%struct.usb_ov511*, i32) #1

declare dso_local i32 @err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
