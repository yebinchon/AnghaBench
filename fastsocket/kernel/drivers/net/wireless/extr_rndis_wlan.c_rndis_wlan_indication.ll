; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_rndis_wlan_indication.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_rndis_wlan_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.rndis_wlan_private = type { i32, i32, i32, i32 }
%struct.rndis_indicate = type { i32 }

@OID_802_11_ADD_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"ignored OID_802_11_ADD_KEY triggered 'media connect'\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"media connect\0A\00", align 1
@WORK_LINK_UP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"media disconnect\0A\00", align 1
@WORK_LINK_DOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"indication: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, i8*, i32)* @rndis_wlan_indication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndis_wlan_indication(%struct.usbnet* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rndis_wlan_private*, align 8
  %8 = alloca %struct.rndis_indicate*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %10 = call %struct.rndis_wlan_private* @get_rndis_wlan_priv(%struct.usbnet* %9)
  store %struct.rndis_wlan_private* %10, %struct.rndis_wlan_private** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.rndis_indicate*
  store %struct.rndis_indicate* %12, %struct.rndis_indicate** %8, align 8
  %13 = load %struct.rndis_indicate*, %struct.rndis_indicate** %8, align 8
  %14 = getelementptr inbounds %struct.rndis_indicate, %struct.rndis_indicate* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %64 [
    i32 130, label %16
    i32 129, label %44
    i32 128, label %59
  ]

16:                                               ; preds = %3
  %17 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %7, align 8
  %18 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @OID_802_11_ADD_KEY, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %24 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @netdev_dbg(i32 %25, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %73

27:                                               ; preds = %16
  %28 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %29 = call i32 @usbnet_pause_rx(%struct.usbnet* %28)
  %30 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %31 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @netdev_info(i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @WORK_LINK_UP, align 4
  %35 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %7, align 8
  %36 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %35, i32 0, i32 2
  %37 = call i32 @set_bit(i32 %34, i32* %36)
  %38 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %7, align 8
  %39 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %7, align 8
  %42 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %41, i32 0, i32 0
  %43 = call i32 @queue_work(i32 %40, i32* %42)
  br label %73

44:                                               ; preds = %3
  %45 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %46 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @netdev_info(i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @WORK_LINK_DOWN, align 4
  %50 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %7, align 8
  %51 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %50, i32 0, i32 2
  %52 = call i32 @set_bit(i32 %49, i32* %51)
  %53 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %7, align 8
  %54 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %7, align 8
  %57 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %56, i32 0, i32 0
  %58 = call i32 @queue_work(i32 %55, i32* %57)
  br label %73

59:                                               ; preds = %3
  %60 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %61 = load %struct.rndis_indicate*, %struct.rndis_indicate** %8, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @rndis_wlan_media_specific_indication(%struct.usbnet* %60, %struct.rndis_indicate* %61, i32 %62)
  br label %73

64:                                               ; preds = %3
  %65 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %66 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.rndis_indicate*, %struct.rndis_indicate** %8, align 8
  %69 = getelementptr inbounds %struct.rndis_indicate, %struct.rndis_indicate* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  %72 = call i32 (i32, i8*, ...) @netdev_info(i32 %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %22, %64, %59, %44, %27
  ret void
}

declare dso_local %struct.rndis_wlan_private* @get_rndis_wlan_priv(%struct.usbnet*) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @usbnet_pause_rx(%struct.usbnet*) #1

declare dso_local i32 @netdev_info(i32, i8*, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @rndis_wlan_media_specific_indication(%struct.usbnet*, %struct.rndis_indicate*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
