; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_serial_common_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_serial_common_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_serial = type { i32, i32, i32, i32*, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@dev_attr_hsotype = common dso_local global i32 0, align 4
@tty_drv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hso_serial*)* @hso_serial_common_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hso_serial_common_free(%struct.hso_serial* %0) #0 {
  %2 = alloca %struct.hso_serial*, align 8
  %3 = alloca i32, align 4
  store %struct.hso_serial* %0, %struct.hso_serial** %2, align 8
  %4 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %5 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %4, i32 0, i32 6
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %12 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %11, i32 0, i32 6
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @device_remove_file(i64 %15, i32* @dev_attr_hsotype)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load i32, i32* @tty_drv, align 4
  %19 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %20 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @tty_unregister_device(i32 %18, i32 %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %46, %17
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %26 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %23
  %30 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %31 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @usb_free_urb(i32 %36)
  %38 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %39 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @kfree(i32 %44)
  br label %46

46:                                               ; preds = %29
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %23

49:                                               ; preds = %23
  %50 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %51 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @usb_free_urb(i32 %52)
  %54 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %55 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @kfree(i32 %56)
  ret void
}

declare dso_local i32 @device_remove_file(i64, i32*) #1

declare dso_local i32 @tty_unregister_device(i32, i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
