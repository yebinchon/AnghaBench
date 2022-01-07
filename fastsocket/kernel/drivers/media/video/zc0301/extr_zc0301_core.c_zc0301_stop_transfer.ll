; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zc0301/extr_zc0301_core.c_zc0301_stop_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zc0301/extr_zc0301_core.c_zc0301_stop_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zc0301_device = type { i32, i32*, i32*, %struct.usb_device* }
%struct.usb_device = type { i32 }

@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@ZC0301_URBS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"usb_set_interface() failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zc0301_device*)* @zc0301_stop_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zc0301_stop_transfer(%struct.zc0301_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zc0301_device*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.zc0301_device* %0, %struct.zc0301_device** %3, align 8
  %7 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %8 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %7, i32 0, i32 3
  %9 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  store %struct.usb_device* %9, %struct.usb_device** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %11 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @DEV_DISCONNECTED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

17:                                               ; preds = %1
  %18 = load i64, i64* @ZC0301_URBS, align 8
  %19 = sub i64 %18, 1
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %45, %17
  %21 = load i64, i64* %5, align 8
  %22 = icmp uge i64 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %20
  %24 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %25 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usb_kill_urb(i32 %29)
  %31 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %32 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @usb_free_urb(i32 %36)
  %38 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %39 = getelementptr inbounds %struct.zc0301_device, %struct.zc0301_device* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @kfree(i32 %43)
  br label %45

45:                                               ; preds = %23
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, -1
  store i64 %47, i64* %5, align 8
  br label %20

48:                                               ; preds = %20
  %49 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %50 = call i32 @usb_set_interface(%struct.usb_device* %49, i32 0, i32 0)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @DBG(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %48
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %16
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @DBG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
