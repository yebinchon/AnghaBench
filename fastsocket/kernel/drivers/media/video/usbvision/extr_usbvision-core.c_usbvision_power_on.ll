; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_usbvision_power_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_usbvision_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i32 }

@DBG_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@USBVISION_PWR_REG = common dso_local global i32 0, align 4
@USBVISION_SSPND_EN = common dso_local global i32 0, align 4
@USBVISION_RES2 = common dso_local global i32 0, align 4
@USBVISION_PWR_VID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%s: err_code %d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"power is on\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbvision_power_on(%struct.usb_usbvision* %0) #0 {
  %2 = alloca %struct.usb_usbvision*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @DBG_FUNC, align 4
  %5 = call i32 (i32, i8*, ...) @PDEBUG(i32 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %7 = load i32, i32* @USBVISION_PWR_REG, align 4
  %8 = load i32, i32* @USBVISION_SSPND_EN, align 4
  %9 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %6, i32 %7, i32 %8)
  %10 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %11 = load i32, i32* @USBVISION_PWR_REG, align 4
  %12 = load i32, i32* @USBVISION_SSPND_EN, align 4
  %13 = load i32, i32* @USBVISION_RES2, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %10, i32 %11, i32 %14)
  %16 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %17 = load i32, i32* @USBVISION_PWR_REG, align 4
  %18 = load i32, i32* @USBVISION_SSPND_EN, align 4
  %19 = load i32, i32* @USBVISION_PWR_VID, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %16, i32 %17, i32 %20)
  %22 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %23 = load i32, i32* @USBVISION_PWR_REG, align 4
  %24 = load i32, i32* @USBVISION_SSPND_EN, align 4
  %25 = load i32, i32* @USBVISION_PWR_VID, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @USBVISION_RES2, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %22, i32 %23, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %34 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %1
  %36 = load i32, i32* @DBG_FUNC, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 (i32, i8*, ...) @PDEBUG(i32 %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %40, i32 %41)
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @usbvision_write_reg(%struct.usb_usbvision*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
