; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_int51x1.c_int51x1_set_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_int51x1.c_int51x1_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%struct.usb_ctrlrequest = type { i32, i64, i64, i32, i32 }
%struct.urb = type { i32 }
%struct.usbnet = type { i32 }

@PACKET_TYPE_DIRECTED = common dso_local global i32 0, align 4
@PACKET_TYPE_BROADCAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@PACKET_TYPE_PROMISCUOUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"promiscuous mode enabled\00", align 1
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@PACKET_TYPE_ALL_MULTICAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"receive all multicast enabled\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"receive own packets only\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Error allocating URB\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Error allocating control msg\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@SET_ETHERNET_PACKET_FILTER = common dso_local global i32 0, align 4
@int51x1_async_cmd_callback = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Error submitting control msg, sts=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @int51x1_set_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @int51x1_set_multicast(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.usb_ctrlrequest*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.usbnet*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.usbnet* @netdev_priv(%struct.net_device* %8)
  store %struct.usbnet* %9, %struct.usbnet** %6, align 8
  %10 = load i32, i32* @PACKET_TYPE_DIRECTED, align 4
  %11 = load i32, i32* @PACKET_TYPE_BROADCAST, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IFF_PROMISC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load i32, i32* @PACKET_TYPE_PROMISCUOUS, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %24 = call i32 @devinfo(%struct.usbnet* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %47

25:                                               ; preds = %1
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IFF_ALLMULTI, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30, %25
  %38 = load i32, i32* @PACKET_TYPE_ALL_MULTICAST, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %42 = call i32 @devdbg(%struct.usbnet* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %46

43:                                               ; preds = %30
  %44 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %45 = call i32 @devdbg(%struct.usbnet* %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %37
  br label %47

47:                                               ; preds = %46, %19
  %48 = load i32, i32* @GFP_ATOMIC, align 4
  %49 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %48)
  store %struct.urb* %49, %struct.urb** %5, align 8
  %50 = load %struct.urb*, %struct.urb** %5, align 8
  %51 = icmp ne %struct.urb* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %54 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %112

55:                                               ; preds = %47
  %56 = load i32, i32* @GFP_ATOMIC, align 4
  %57 = call %struct.usb_ctrlrequest* @kmalloc(i32 32, i32 %56)
  store %struct.usb_ctrlrequest* %57, %struct.usb_ctrlrequest** %3, align 8
  %58 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %3, align 8
  %59 = icmp ne %struct.usb_ctrlrequest* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %62 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %109

63:                                               ; preds = %55
  %64 = load i32, i32* @USB_DIR_OUT, align 4
  %65 = load i32, i32* @USB_TYPE_CLASS, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %3, align 8
  %70 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @SET_ETHERNET_PACKET_FILTER, align 4
  %72 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %3, align 8
  %73 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @cpu_to_le16(i32 %74)
  %76 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %3, align 8
  %77 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %3, align 8
  %79 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %3, align 8
  %81 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load %struct.urb*, %struct.urb** %5, align 8
  %83 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %84 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %87 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @usb_sndctrlpipe(i32 %88, i32 0)
  %90 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %3, align 8
  %91 = bitcast %struct.usb_ctrlrequest* %90 to i8*
  %92 = load i32, i32* @int51x1_async_cmd_callback, align 4
  %93 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %3, align 8
  %94 = bitcast %struct.usb_ctrlrequest* %93 to i8*
  %95 = call i32 @usb_fill_control_urb(%struct.urb* %82, i32 %85, i32 %89, i8* %91, i32* null, i32 0, i32 %92, i8* %94)
  %96 = load %struct.urb*, %struct.urb** %5, align 8
  %97 = load i32, i32* @GFP_ATOMIC, align 4
  %98 = call i32 @usb_submit_urb(%struct.urb* %96, i32 %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %63
  %102 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %103 = load i32, i32* %4, align 4
  %104 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %103)
  br label %106

105:                                              ; preds = %63
  br label %112

106:                                              ; preds = %101
  %107 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %3, align 8
  %108 = call i32 @kfree(%struct.usb_ctrlrequest* %107)
  br label %109

109:                                              ; preds = %106, %60
  %110 = load %struct.urb*, %struct.urb** %5, align 8
  %111 = call i32 @usb_free_urb(%struct.urb* %110)
  br label %112

112:                                              ; preds = %109, %105, %52
  ret void
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @devinfo(%struct.usbnet*, i8*) #1

declare dso_local i32 @devdbg(%struct.usbnet*, i8*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @devwarn(%struct.usbnet*, i8*, ...) #1

declare dso_local %struct.usb_ctrlrequest* @kmalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @usb_fill_control_urb(%struct.urb*, i32, i32, i8*, i32*, i32, i32, i8*) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @kfree(%struct.usb_ctrlrequest*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
