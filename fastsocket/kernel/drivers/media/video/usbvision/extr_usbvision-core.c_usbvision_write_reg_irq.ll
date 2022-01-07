; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_usbvision_write_reg_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_usbvision_write_reg_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i32, i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i8*, i8*, i64, i32 }

@DBG_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EFAULT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USBVISION_OP_CODE = common dso_local global i32 0, align 4
@usbvision_ctrl_urb_complete = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"submit %d byte: error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_usbvision*, i32, i8*, i32)* @usbvision_write_reg_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvision_write_reg_irq(%struct.usb_usbvision* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_usbvision*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @DBG_IRQ, align 4
  %12 = call i32 (i32, i8*, ...) @PDEBUG(i32 %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %9, align 4
  %14 = icmp sgt i32 %13, 8
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EFAULT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %98

18:                                               ; preds = %4
  %19 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %20 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %98

26:                                               ; preds = %18
  %27 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %28 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i32, i32* @USB_DIR_OUT, align 4
  %30 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %35 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* @USBVISION_OP_CODE, align 4
  %38 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %39 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  store i32 %37, i32* %40, align 8
  %41 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %42 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %47 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i8* %45, i8** %48, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %52 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i8* %50, i8** %53, align 8
  %54 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %55 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %58 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %61 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @usb_sndctrlpipe(i32 %62, i32 1)
  %64 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %65 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %64, i32 0, i32 3
  %66 = bitcast %struct.TYPE_2__* %65 to i8*
  %67 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %68 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @usbvision_ctrl_urb_complete, align 4
  %73 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %74 = bitcast %struct.usb_usbvision* %73 to i8*
  %75 = call i32 @usb_fill_control_urb(i32 %56, i32 %59, i32 %63, i8* %66, i8* %70, i32 %71, i32 %72, i8* %74)
  %76 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %77 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @memcpy(i64 %78, i8* %79, i32 %80)
  %82 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %83 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @GFP_ATOMIC, align 4
  %86 = call i32 @usb_submit_urb(i32 %84, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %26
  %90 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %91 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  br label %92

92:                                               ; preds = %89, %26
  %93 = load i32, i32* @DBG_IRQ, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 (i32, i8*, ...) @PDEBUG(i32 %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %92, %23, %15
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @usb_fill_control_urb(i32, i32, i32, i8*, i8*, i32, i32, i8*) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
