; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_usbvision_measure_bandwidth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_usbvision_measure_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_usbvision*)* @usbvision_measure_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvision_measure_bandwidth(%struct.usb_usbvision* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_usbvision*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %6 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %11 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %54

15:                                               ; preds = %1
  %16 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %17 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %15
  %21 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %22 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %20
  %26 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %27 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %30 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %33 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  %36 = sdiv i32 %28, %35
  %37 = mul nsw i32 %36, 100
  %38 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %39 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %37, %40
  %42 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %43 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %25, %20, %15
  %45 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %46 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  %47 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %48 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %47, i32 0, i32 4
  store i32 0, i32* %48, align 4
  %49 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %50 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %49, i32 0, i32 2
  store i32 0, i32* %50, align 4
  %51 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %52 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %51, i32 0, i32 5
  store i32 0, i32* %52, align 4
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %44, %9
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
