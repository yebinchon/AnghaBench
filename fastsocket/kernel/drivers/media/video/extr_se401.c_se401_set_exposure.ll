; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_set_exposure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_set_exposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_se401 = type { i32, i32, i32, i32 }

@flickerless = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_se401*, i32)* @se401_set_exposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @se401_set_exposure(%struct.usb_se401* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_se401*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usb_se401* %0, %struct.usb_se401** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = shl i32 %6, 5
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @flickerless, align 4
  %9 = icmp eq i32 %8, 50
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = srem i32 %12, 106667
  %14 = sub nsw i32 %11, %13
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %10, %2
  %16 = load i32, i32* @flickerless, align 4
  %17 = icmp eq i32 %16, 60
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = srem i32 %20, 88889
  %22 = sub nsw i32 %19, %21
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %18, %15
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 5
  %26 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %27 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %32 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = ashr i32 %33, 8
  %35 = and i32 %34, 255
  %36 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %37 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 255
  %40 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %41 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
