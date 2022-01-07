; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_usbnet.c_usbnet_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_usbnet.c_usbnet_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.usbnet = type { i32, %struct.TYPE_8__*, i32, i32, %struct.net_device* }
%struct.TYPE_8__ = type { i32 (%struct.usbnet*, %struct.usb_interface*)*, i32 }
%struct.net_device = type { i32 }
%struct.usb_device = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unregister '%s' usb-%s-%s, %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbnet_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.usbnet* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.usbnet* %7, %struct.usbnet** %3, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %9 = call i32 @usb_set_intfdata(%struct.usb_interface* %8, i32* null)
  %10 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %11 = icmp ne %struct.usbnet* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %78

13:                                               ; preds = %1
  %14 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %15 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %14)
  store %struct.usb_device* %15, %struct.usb_device** %4, align 8
  %16 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %17 = load i32, i32* @probe, align 4
  %18 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %19 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %18, i32 0, i32 4
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  %21 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %28 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %33 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %36 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @netif_info(%struct.usbnet* %16, i32 %17, %struct.net_device* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %31, i32 %34, i32 %39)
  %41 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %42 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %41, i32 0, i32 4
  %43 = load %struct.net_device*, %struct.net_device** %42, align 8
  store %struct.net_device* %43, %struct.net_device** %5, align 8
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = call i32 @unregister_netdev(%struct.net_device* %44)
  %46 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %47 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %46, i32 0, i32 3
  %48 = call i32 @cancel_work_sync(i32* %47)
  %49 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %50 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %49, i32 0, i32 2
  %51 = call i32 @usb_scuttle_anchored_urbs(i32* %50)
  %52 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %53 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32 (%struct.usbnet*, %struct.usb_interface*)*, i32 (%struct.usbnet*, %struct.usb_interface*)** %55, align 8
  %57 = icmp ne i32 (%struct.usbnet*, %struct.usb_interface*)* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %13
  %59 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %60 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32 (%struct.usbnet*, %struct.usb_interface*)*, i32 (%struct.usbnet*, %struct.usb_interface*)** %62, align 8
  %64 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %65 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %66 = call i32 %63(%struct.usbnet* %64, %struct.usb_interface* %65)
  br label %67

67:                                               ; preds = %58, %13
  %68 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %69 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @usb_kill_urb(i32 %70)
  %72 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %73 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @usb_free_urb(i32 %74)
  %76 = load %struct.net_device*, %struct.net_device** %5, align 8
  %77 = call i32 @free_netdev(%struct.net_device* %76)
  br label %78

78:                                               ; preds = %67, %12
  ret void
}

declare dso_local %struct.usbnet* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @netif_info(%struct.usbnet*, i32, %struct.net_device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @usb_scuttle_anchored_urbs(i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
