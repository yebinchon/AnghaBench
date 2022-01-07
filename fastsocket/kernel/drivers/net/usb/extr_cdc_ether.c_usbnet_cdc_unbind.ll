; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ether.c_usbnet_cdc_unbind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ether.c_usbnet_cdc_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.usb_interface = type { i32 }
%struct.cdc_state = type { %struct.usb_interface*, %struct.usb_interface* }
%struct.usb_driver = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbnet_cdc_unbind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.cdc_state*, align 8
  %6 = alloca %struct.usb_driver*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %8 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %7, i32 0, i32 0
  %9 = bitcast i32* %8 to i8*
  %10 = bitcast i8* %9 to %struct.cdc_state*
  store %struct.cdc_state* %10, %struct.cdc_state** %5, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = call %struct.usb_driver* @driver_of(%struct.usb_interface* %11)
  store %struct.usb_driver* %12, %struct.usb_driver** %6, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = load %struct.cdc_state*, %struct.cdc_state** %5, align 8
  %15 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %14, i32 0, i32 0
  %16 = load %struct.usb_interface*, %struct.usb_interface** %15, align 8
  %17 = icmp eq %struct.usb_interface* %13, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = load %struct.cdc_state*, %struct.cdc_state** %5, align 8
  %20 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %19, i32 0, i32 1
  %21 = load %struct.usb_interface*, %struct.usb_interface** %20, align 8
  %22 = icmp ne %struct.usb_interface* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.cdc_state*, %struct.cdc_state** %5, align 8
  %25 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %24, i32 0, i32 1
  %26 = load %struct.usb_interface*, %struct.usb_interface** %25, align 8
  %27 = call i32 @usb_set_intfdata(%struct.usb_interface* %26, i32* null)
  %28 = load %struct.usb_driver*, %struct.usb_driver** %6, align 8
  %29 = load %struct.cdc_state*, %struct.cdc_state** %5, align 8
  %30 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %29, i32 0, i32 1
  %31 = load %struct.usb_interface*, %struct.usb_interface** %30, align 8
  %32 = call i32 @usb_driver_release_interface(%struct.usb_driver* %28, %struct.usb_interface* %31)
  %33 = load %struct.cdc_state*, %struct.cdc_state** %5, align 8
  %34 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %33, i32 0, i32 1
  store %struct.usb_interface* null, %struct.usb_interface** %34, align 8
  br label %59

35:                                               ; preds = %18, %2
  %36 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %37 = load %struct.cdc_state*, %struct.cdc_state** %5, align 8
  %38 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %37, i32 0, i32 1
  %39 = load %struct.usb_interface*, %struct.usb_interface** %38, align 8
  %40 = icmp eq %struct.usb_interface* %36, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %35
  %42 = load %struct.cdc_state*, %struct.cdc_state** %5, align 8
  %43 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %42, i32 0, i32 0
  %44 = load %struct.usb_interface*, %struct.usb_interface** %43, align 8
  %45 = icmp ne %struct.usb_interface* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load %struct.cdc_state*, %struct.cdc_state** %5, align 8
  %48 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %47, i32 0, i32 0
  %49 = load %struct.usb_interface*, %struct.usb_interface** %48, align 8
  %50 = call i32 @usb_set_intfdata(%struct.usb_interface* %49, i32* null)
  %51 = load %struct.usb_driver*, %struct.usb_driver** %6, align 8
  %52 = load %struct.cdc_state*, %struct.cdc_state** %5, align 8
  %53 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %52, i32 0, i32 0
  %54 = load %struct.usb_interface*, %struct.usb_interface** %53, align 8
  %55 = call i32 @usb_driver_release_interface(%struct.usb_driver* %51, %struct.usb_interface* %54)
  %56 = load %struct.cdc_state*, %struct.cdc_state** %5, align 8
  %57 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %56, i32 0, i32 0
  store %struct.usb_interface* null, %struct.usb_interface** %57, align 8
  br label %58

58:                                               ; preds = %46, %41, %35
  br label %59

59:                                               ; preds = %58, %23
  ret void
}

declare dso_local %struct.usb_driver* @driver_of(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_driver_release_interface(%struct.usb_driver*, %struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
