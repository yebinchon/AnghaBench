; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov518_i2c_read_internal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov518_i2c_read_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32 }

@R51x_I2C_SADDR_2 = common dso_local global i32 0, align 4
@R518_I2C_CTL = common dso_local global i32 0, align 4
@R51x_I2C_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"0x%02X:0x%02X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i8)* @ov518_i2c_read_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov518_i2c_read_internal(%struct.usb_ov511* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ov511*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %9 = load i32, i32* @R51x_I2C_SADDR_2, align 4
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  %12 = call i32 @reg_w(%struct.usb_ov511* %8, i32 %9, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %41

17:                                               ; preds = %2
  %18 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %19 = load i32, i32* @R518_I2C_CTL, align 4
  %20 = call i32 @reg_w(%struct.usb_ov511* %18, i32 %19, i32 3)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %41

25:                                               ; preds = %17
  %26 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %27 = load i32, i32* @R518_I2C_CTL, align 4
  %28 = call i32 @reg_w(%struct.usb_ov511* %26, i32 %27, i32 5)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %41

33:                                               ; preds = %25
  %34 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %35 = load i32, i32* @R51x_I2C_DATA, align 4
  %36 = call i32 @reg_r(%struct.usb_ov511* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i8, i8* %5, align 1
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @PDEBUG(i32 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8 zeroext %37, i32 %38)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %33, %31, %23, %15
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @reg_w(%struct.usb_ov511*, i32, i32) #1

declare dso_local i32 @reg_r(%struct.usb_ov511*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
