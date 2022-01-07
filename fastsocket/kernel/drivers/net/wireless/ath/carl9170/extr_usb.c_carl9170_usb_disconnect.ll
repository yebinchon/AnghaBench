; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.ar9170 = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @carl9170_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.ar9170* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.ar9170* %6, %struct.ar9170** %3, align 8
  %7 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %8 = icmp ne %struct.ar9170* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %42

14:                                               ; preds = %1
  %15 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %16 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %15, i32 0, i32 1
  %17 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  store %struct.usb_device* %17, %struct.usb_device** %4, align 8
  %18 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %19 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %18, i32 0, i32 0
  %20 = call i32 @wait_for_completion(i32* %19)
  %21 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %22 = call i64 @IS_INITIALIZED(%struct.ar9170* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %26 = call i32 @carl9170_reboot(%struct.ar9170* %25)
  %27 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %28 = call i32 @carl9170_usb_stop(%struct.ar9170* %27)
  br label %29

29:                                               ; preds = %24, %14
  %30 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %31 = call i32 @carl9170_usb_cancel_urbs(%struct.ar9170* %30)
  %32 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %33 = call i32 @carl9170_unregister(%struct.ar9170* %32)
  %34 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %35 = call i32 @usb_set_intfdata(%struct.usb_interface* %34, i32* null)
  %36 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %37 = call i32 @carl9170_release_firmware(%struct.ar9170* %36)
  %38 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %39 = call i32 @carl9170_free(%struct.ar9170* %38)
  %40 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %41 = call i32 @usb_put_dev(%struct.usb_device* %40)
  br label %42

42:                                               ; preds = %29, %13
  ret void
}

declare dso_local %struct.ar9170* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i64 @IS_INITIALIZED(%struct.ar9170*) #1

declare dso_local i32 @carl9170_reboot(%struct.ar9170*) #1

declare dso_local i32 @carl9170_usb_stop(%struct.ar9170*) #1

declare dso_local i32 @carl9170_usb_cancel_urbs(%struct.ar9170*) #1

declare dso_local i32 @carl9170_unregister(%struct.ar9170*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @carl9170_release_firmware(%struct.ar9170*) #1

declare dso_local i32 @carl9170_free(%struct.ar9170*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
