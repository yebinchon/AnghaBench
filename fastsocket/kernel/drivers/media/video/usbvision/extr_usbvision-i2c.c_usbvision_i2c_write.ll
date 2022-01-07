; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-i2c.c_usbvision_i2c_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-i2c.c_usbvision_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_usbvision*, i8, i8*, i16)* @usbvision_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvision_i2c_write(%struct.usb_usbvision* %0, i8 zeroext %1, i8* %2, i16 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_usbvision*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8* %2, i8** %8, align 8
  store i16 %3, i16* %9, align 2
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 4, i32* %14, align 4
  br label %16

16:                                               ; preds = %62, %4
  %17 = load i16, i16* %9, align 2
  %18 = sext i16 %17 to i32
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %63

20:                                               ; preds = %16
  %21 = load i16, i16* %9, align 2
  %22 = sext i16 %21 to i32
  %23 = load i32, i32* %14, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %14, align 4
  br label %30

27:                                               ; preds = %20
  %28 = load i16, i16* %9, align 2
  %29 = sext i16 %28 to i32
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi i32 [ %26, %25 ], [ %29, %27 ]
  store i32 %31, i32* %13, align 4
  %32 = load %struct.usb_usbvision*, %struct.usb_usbvision** %6, align 8
  %33 = load i8, i8* %7, align 1
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @usbvision_i2c_write_max4(%struct.usb_usbvision* %32, i8 zeroext %33, i8* %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %30
  %40 = load i32, i32* %13, align 4
  %41 = load i16, i16* %9, align 2
  %42 = sext i16 %41 to i32
  %43 = sub nsw i32 %42, %40
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %9, align 2
  %45 = load i32, i32* %13, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %10, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %12, align 4
  br label %62

52:                                               ; preds = %30
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  br label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EFAULT, align 4
  %59 = sub nsw i32 0, %58
  br label %60

60:                                               ; preds = %57, %55
  %61 = phi i32 [ %56, %55 ], [ %59, %57 ]
  store i32 %61, i32* %5, align 4
  br label %65

62:                                               ; preds = %39
  br label %16

63:                                               ; preds = %16
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @usbvision_i2c_write_max4(%struct.usb_usbvision*, i8 zeroext, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
