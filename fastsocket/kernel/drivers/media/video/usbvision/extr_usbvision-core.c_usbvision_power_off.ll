; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_usbvision_power_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_usbvision_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i64 }

@DBG_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@USBVISION_PWR_REG = common dso_local global i32 0, align 4
@USBVISION_SSPND_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%s: err_code %d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"power is off\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbvision_power_off(%struct.usb_usbvision* %0) #0 {
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
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %14 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i32, i32* @DBG_FUNC, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 1
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 (i32, i8*, ...) @PDEBUG(i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %20, i32 %21)
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @usbvision_write_reg(%struct.usb_usbvision*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
