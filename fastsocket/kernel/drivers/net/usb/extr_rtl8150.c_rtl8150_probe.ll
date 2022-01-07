; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_rtl8150.c_rtl8150_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_rtl8150.c_rtl8150_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.net_device*, %struct.usb_device*, i32, i32 }
%struct.net_device = type { i32, i32, i32* }

@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@INTBUFSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@rx_fixup = common dso_local global i32 0, align 4
@rtl8150_netdev_ops = common dso_local global i32 0, align 4
@RTL8150_TX_TIMEOUT = common dso_local global i32 0, align 4
@ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"couldn't reset the device\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"couldn't register the device\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%s: rtl8150 is detected\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @rtl8150_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8150_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %10 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %9)
  store %struct.usb_device* %10, %struct.usb_device** %6, align 8
  %11 = call %struct.net_device* @alloc_etherdev(i32 32)
  store %struct.net_device* %11, %struct.net_device** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %8, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = call i32 @err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %112

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %8, align 8
  %20 = call %struct.TYPE_10__* @netdev_priv(%struct.net_device* %19)
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %7, align 8
  %21 = load i32, i32* @INTBUFSIZE, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32 @kmalloc(i32 %21, i32 %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %18
  %31 = load %struct.net_device*, %struct.net_device** %8, align 8
  %32 = call i32 @free_netdev(%struct.net_device* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %112

35:                                               ; preds = %18
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 5
  %38 = load i32, i32* @rx_fixup, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = ptrtoint %struct.TYPE_10__* %39 to i64
  %41 = call i32 @tasklet_init(i32* %37, i32 %38, i64 %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 4
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 3
  store %struct.usb_device* %45, %struct.usb_device** %47, align 8
  %48 = load %struct.net_device*, %struct.net_device** %8, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  store %struct.net_device* %48, %struct.net_device** %50, align 8
  %51 = load %struct.net_device*, %struct.net_device** %8, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 2
  store i32* @rtl8150_netdev_ops, i32** %52, align 8
  %53 = load i32, i32* @RTL8150_TX_TIMEOUT, align 4
  %54 = load %struct.net_device*, %struct.net_device** %8, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.net_device*, %struct.net_device** %8, align 8
  %57 = call i32 @SET_ETHTOOL_OPS(%struct.net_device* %56, i32* @ops)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  store i32 100, i32* %59, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = call i32 @alloc_all_urbs(%struct.TYPE_10__* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %35
  %64 = call i32 @err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %103

65:                                               ; preds = %35
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = call i32 @rtl8150_reset(%struct.TYPE_10__* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = call i32 @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %100

71:                                               ; preds = %65
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %73 = call i32 @fill_skb_pool(%struct.TYPE_10__* %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %75 = call i32 @set_ethernet_addr(%struct.TYPE_10__* %74)
  %76 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = call i32 @usb_set_intfdata(%struct.usb_interface* %76, %struct.TYPE_10__* %77)
  %79 = load %struct.net_device*, %struct.net_device** %8, align 8
  %80 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %81 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %80, i32 0, i32 0
  %82 = call i32 @SET_NETDEV_DEV(%struct.net_device* %79, i32* %81)
  %83 = load %struct.net_device*, %struct.net_device** %8, align 8
  %84 = call i64 @register_netdev(%struct.net_device* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %71
  %87 = call i32 @err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %95

88:                                               ; preds = %71
  %89 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %90 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %89, i32 0, i32 0
  %91 = load %struct.net_device*, %struct.net_device** %8, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dev_info(i32* %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  store i32 0, i32* %3, align 4
  br label %112

95:                                               ; preds = %86
  %96 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %97 = call i32 @usb_set_intfdata(%struct.usb_interface* %96, %struct.TYPE_10__* null)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %99 = call i32 @free_skb_pool(%struct.TYPE_10__* %98)
  br label %100

100:                                              ; preds = %95, %69
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %102 = call i32 @free_all_urbs(%struct.TYPE_10__* %101)
  br label %103

103:                                              ; preds = %100, %63
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @kfree(i32 %106)
  %108 = load %struct.net_device*, %struct.net_device** %8, align 8
  %109 = call i32 @free_netdev(%struct.net_device* %108)
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %103, %88, %30, %14
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local %struct.TYPE_10__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @SET_ETHTOOL_OPS(%struct.net_device*, i32*) #1

declare dso_local i32 @alloc_all_urbs(%struct.TYPE_10__*) #1

declare dso_local i32 @rtl8150_reset(%struct.TYPE_10__*) #1

declare dso_local i32 @fill_skb_pool(%struct.TYPE_10__*) #1

declare dso_local i32 @set_ethernet_addr(%struct.TYPE_10__*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.TYPE_10__*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i64 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @free_skb_pool(%struct.TYPE_10__*) #1

declare dso_local i32 @free_all_urbs(%struct.TYPE_10__*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
