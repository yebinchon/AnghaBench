; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov518_i2c_write_internal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov518_i2c_write_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"0x%02X:0x%02X\00", align 1
@R51x_I2C_SADDR_3 = common dso_local global i32 0, align 4
@R51x_I2C_DATA = common dso_local global i32 0, align 4
@R518_I2C_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i8, i8)* @ov518_i2c_write_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov518_i2c_write_internal(%struct.usb_ov511* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ov511*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %9 = load i8, i8* %6, align 1
  %10 = load i8, i8* %7, align 1
  %11 = call i32 @PDEBUG(i32 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8 zeroext %9, i8 zeroext %10)
  %12 = load %struct.usb_ov511*, %struct.usb_ov511** %5, align 8
  %13 = load i32, i32* @R51x_I2C_SADDR_3, align 4
  %14 = load i8, i8* %6, align 1
  %15 = zext i8 %14 to i32
  %16 = call i32 @reg_w(%struct.usb_ov511* %12, i32 %13, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %40

21:                                               ; preds = %3
  %22 = load %struct.usb_ov511*, %struct.usb_ov511** %5, align 8
  %23 = load i32, i32* @R51x_I2C_DATA, align 4
  %24 = load i8, i8* %7, align 1
  %25 = zext i8 %24 to i32
  %26 = call i32 @reg_w(%struct.usb_ov511* %22, i32 %23, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %40

31:                                               ; preds = %21
  %32 = load %struct.usb_ov511*, %struct.usb_ov511** %5, align 8
  %33 = load i32, i32* @R518_I2C_CTL, align 4
  %34 = call i32 @reg_w(%struct.usb_ov511* %32, i32 %33, i32 1)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %40

39:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %37, %29, %19
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @PDEBUG(i32, i8*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @reg_w(%struct.usb_ov511*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
