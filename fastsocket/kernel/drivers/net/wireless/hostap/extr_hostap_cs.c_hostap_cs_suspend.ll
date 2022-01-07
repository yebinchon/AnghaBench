; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_cs.c_hostap_cs_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_cs.c_hostap_cs_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i64 }
%struct.net_device = type { i32 }
%struct.hostap_interface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@DEBUG_EXTRA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: CS_EVENT_PM_SUSPEND\0A\00", align 1
@dev_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @hostap_cs_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostap_cs_suspend(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostap_interface*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %8 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.hostap_interface* null, %struct.hostap_interface** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %48

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %17)
  store %struct.hostap_interface* %18, %struct.hostap_interface** %6, align 8
  %19 = load i32, i32* @DEBUG_EXTRA, align 4
  %20 = load i32, i32* @dev_info, align 4
  %21 = call i32 @PDEBUG(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.hostap_interface*, %struct.hostap_interface** %6, align 8
  %23 = icmp ne %struct.hostap_interface* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %16
  %25 = load %struct.hostap_interface*, %struct.hostap_interface** %6, align 8
  %26 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.hostap_interface*, %struct.hostap_interface** %6, align 8
  %31 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %29, %24, %16
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = call i32 @netif_stop_queue(%struct.net_device* %41)
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = call i32 @netif_device_detach(%struct.net_device* %43)
  br label %45

45:                                               ; preds = %40, %37
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = call i32 @prism2_suspend(%struct.net_device* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @prism2_suspend(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
