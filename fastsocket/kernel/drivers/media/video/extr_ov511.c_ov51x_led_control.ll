; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_led_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_led_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"turn on\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"turn off\00", align 1
@BRG_OV511PLUS = common dso_local global i64 0, align 8
@R511_SYS_LED_CTL = common dso_local global i32 0, align 4
@BCL_OV518 = common dso_local global i64 0, align 8
@R518_GPIO_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ov511*, i32)* @ov51x_led_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov51x_led_control(%struct.usb_ov511* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_ov511*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %9 = call i32 @PDEBUG(i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %11 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BRG_OV511PLUS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %17 = load i32, i32* @R511_SYS_LED_CTL, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  %22 = call i32 @reg_w(%struct.usb_ov511* %16, i32 %17, i32 %21)
  br label %38

23:                                               ; preds = %2
  %24 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %25 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BCL_OV518, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %31 = load i32, i32* @R518_GPIO_OUT, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 2, i32 0
  %36 = call i32 @reg_w_mask(%struct.usb_ov511* %30, i32 %31, i32 %35, i32 2)
  br label %37

37:                                               ; preds = %29, %23
  br label %38

38:                                               ; preds = %37, %15
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, i8*) #1

declare dso_local i32 @reg_w(%struct.usb_ov511*, i32, i32) #1

declare dso_local i32 @reg_w_mask(%struct.usb_ov511*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
