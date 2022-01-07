; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_kaweth_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_kaweth_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.kaweth_device = type { i32, i32, i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Opening network device.\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Interface cannot be resumed.\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@INTBUFFERSIZE = common dso_local global i32 0, align 4
@int_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @kaweth_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kaweth_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.kaweth_device*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.kaweth_device* @netdev_priv(%struct.net_device* %6)
  store %struct.kaweth_device* %7, %struct.kaweth_device** %4, align 8
  %8 = call i32 @dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %10 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @usb_autopm_get_interface(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = call i32 @err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %84

19:                                               ; preds = %1
  %20 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @kaweth_resubmit_rx_urb(%struct.kaweth_device* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %77

26:                                               ; preds = %19
  %27 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %28 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %27, i32 0, i32 3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %31 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %34 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @usb_rcvintpipe(i32 %35, i32 3)
  %37 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %38 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @INTBUFFERSIZE, align 4
  %41 = load i32, i32* @int_callback, align 4
  %42 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %43 = call i32 @usb_fill_int_urb(%struct.TYPE_3__* %29, i32 %32, i32 %36, i32 %39, i32 %40, i32 %41, %struct.kaweth_device* %42, i32 250)
  %44 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %45 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %48 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %47, i32 0, i32 3
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %52 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %53 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %52, i32 0, i32 3
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %51
  store i32 %57, i32* %55, align 4
  %58 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %59 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %58, i32 0, i32 3
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i32 @usb_submit_urb(%struct.TYPE_3__* %60, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %26
  %66 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %67 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @usb_kill_urb(i32 %68)
  br label %77

70:                                               ; preds = %26
  %71 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %72 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.net_device*, %struct.net_device** %3, align 8
  %74 = call i32 @netif_start_queue(%struct.net_device* %73)
  %75 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %76 = call i32 @kaweth_async_set_rx_mode(%struct.kaweth_device* %75)
  store i32 0, i32* %2, align 4
  br label %84

77:                                               ; preds = %65, %25
  %78 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %79 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @usb_autopm_enable(i32 %80)
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %77, %70, %15
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.kaweth_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @kaweth_resubmit_rx_urb(%struct.kaweth_device*, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_3__*, i32, i32, i32, i32, i32, %struct.kaweth_device*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @kaweth_async_set_rx_mode(%struct.kaweth_device*) #1

declare dso_local i32 @usb_autopm_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
