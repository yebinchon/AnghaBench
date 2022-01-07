; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_stop_serial_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_stop_serial_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_device = type { i32 }
%struct.hso_serial = type { i32, %struct.hso_tiocmget*, %struct.TYPE_2__*, %struct.urb*, i64, i64, i64*, %struct.urb** }
%struct.hso_tiocmget = type { %struct.urb*, i32 }
%struct.TYPE_2__ = type { i64, i32, %struct.urb* }
%struct.urb = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hso_device*)* @hso_stop_serial_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_stop_serial_device(%struct.hso_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hso_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hso_serial*, align 8
  %6 = alloca %struct.hso_tiocmget*, align 8
  %7 = alloca %struct.urb*, align 8
  store %struct.hso_device* %0, %struct.hso_device** %3, align 8
  %8 = load %struct.hso_device*, %struct.hso_device** %3, align 8
  %9 = call %struct.hso_serial* @dev2ser(%struct.hso_device* %8)
  store %struct.hso_serial* %9, %struct.hso_serial** %5, align 8
  %10 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %11 = icmp ne %struct.hso_serial* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %122

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %47, %15
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %19 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %16
  %23 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %24 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %23, i32 0, i32 7
  %25 = load %struct.urb**, %struct.urb*** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.urb*, %struct.urb** %25, i64 %27
  %29 = load %struct.urb*, %struct.urb** %28, align 8
  %30 = icmp ne %struct.urb* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %22
  %32 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %33 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %32, i32 0, i32 7
  %34 = load %struct.urb**, %struct.urb*** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.urb*, %struct.urb** %34, i64 %36
  %38 = load %struct.urb*, %struct.urb** %37, align 8
  %39 = call i32 @usb_kill_urb(%struct.urb* %38)
  %40 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %41 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %40, i32 0, i32 6
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %31, %22
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %16

50:                                               ; preds = %16
  %51 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %52 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %51, i32 0, i32 5
  store i64 0, i64* %52, align 8
  %53 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %54 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %56 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %55, i32 0, i32 3
  %57 = load %struct.urb*, %struct.urb** %56, align 8
  %58 = icmp ne %struct.urb* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %61 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %60, i32 0, i32 3
  %62 = load %struct.urb*, %struct.urb** %61, align 8
  %63 = call i32 @usb_kill_urb(%struct.urb* %62)
  br label %64

64:                                               ; preds = %59, %50
  %65 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %66 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = icmp ne %struct.TYPE_2__* %67, null
  br i1 %68, label %69, label %107

69:                                               ; preds = %64
  %70 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %71 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = call i32 @mutex_lock(i32* %73)
  %75 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %76 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %69
  %82 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %83 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, -1
  store i64 %87, i64* %85, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %81
  %90 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %91 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load %struct.urb*, %struct.urb** %93, align 8
  store %struct.urb* %94, %struct.urb** %7, align 8
  %95 = load %struct.urb*, %struct.urb** %7, align 8
  %96 = icmp ne %struct.urb* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load %struct.urb*, %struct.urb** %7, align 8
  %99 = call i32 @usb_kill_urb(%struct.urb* %98)
  br label %100

100:                                              ; preds = %97, %89
  br label %101

101:                                              ; preds = %100, %81, %69
  %102 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %103 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %102, i32 0, i32 2
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = call i32 @mutex_unlock(i32* %105)
  br label %107

107:                                              ; preds = %101, %64
  %108 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %109 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %108, i32 0, i32 1
  %110 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %109, align 8
  store %struct.hso_tiocmget* %110, %struct.hso_tiocmget** %6, align 8
  %111 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %6, align 8
  %112 = icmp ne %struct.hso_tiocmget* %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %107
  %114 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %6, align 8
  %115 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %114, i32 0, i32 1
  %116 = call i32 @wake_up_interruptible(i32* %115)
  %117 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %6, align 8
  %118 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %117, i32 0, i32 0
  %119 = load %struct.urb*, %struct.urb** %118, align 8
  %120 = call i32 @usb_kill_urb(%struct.urb* %119)
  br label %121

121:                                              ; preds = %113, %107
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %12
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.hso_serial* @dev2ser(%struct.hso_device*) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
