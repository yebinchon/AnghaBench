; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_scratch_get_extra.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_scratch_get_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i64 }

@scratch_buf_size = common dso_local global i32 0, align 4
@DBG_SCRATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"len=%d, new ptr=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_usbvision*, i8*, i32*, i32)* @scratch_get_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scratch_get_extra(%struct.usb_usbvision* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.usb_usbvision*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %11, %12
  %14 = load i32, i32* @scratch_buf_size, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.usb_usbvision*, %struct.usb_usbvision** %5, align 8
  %19 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @memcpy(i8* %17, i64 %24, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, %27
  store i32 %30, i32* %28, align 4
  br label %68

31:                                               ; preds = %4
  %32 = load i32, i32* @scratch_buf_size, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %32, %34
  store i32 %35, i32* %9, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.usb_usbvision*, %struct.usb_usbvision** %5, align 8
  %38 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @memcpy(i8* %36, i64 %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %31
  %50 = load i32*, i32** %7, align 8
  store i32 0, i32* %50, align 4
  br label %67

51:                                               ; preds = %31
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load %struct.usb_usbvision*, %struct.usb_usbvision** %5, align 8
  %57 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 %59, %60
  %62 = call i32 @memcpy(i8* %55, i64 %58, i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %63, %64
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %51, %49
  br label %68

68:                                               ; preds = %67, %16
  %69 = load i32, i32* @DBG_SCRATCH, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @PDEBUG(i32 %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %72)
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
