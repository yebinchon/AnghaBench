; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_rndis_host.c_rndis_msg_indicate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_rndis_host.c_rndis_msg_indicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.usbnet*, %struct.rndis_indicate*, i32)* }
%struct.rndis_indicate = type { i32 }
%struct.cdc_state = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"rndis media connect\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"rndis media disconnect\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"rndis indication: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, %struct.rndis_indicate*, i32)* @rndis_msg_indicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndis_msg_indicate(%struct.usbnet* %0, %struct.rndis_indicate* %1, i32 %2) #0 {
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.rndis_indicate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdc_state*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.rndis_indicate* %1, %struct.rndis_indicate** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %10 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %9, i32 0, i32 1
  %11 = bitcast i32* %10 to i8*
  %12 = bitcast i8* %11 to %struct.cdc_state*
  store %struct.cdc_state* %12, %struct.cdc_state** %7, align 8
  %13 = load %struct.cdc_state*, %struct.cdc_state** %7, align 8
  %14 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %8, align 8
  %17 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %18 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.usbnet*, %struct.rndis_indicate*, i32)*, i32 (%struct.usbnet*, %struct.rndis_indicate*, i32)** %20, align 8
  %22 = icmp ne i32 (%struct.usbnet*, %struct.rndis_indicate*, i32)* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %25 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (%struct.usbnet*, %struct.rndis_indicate*, i32)*, i32 (%struct.usbnet*, %struct.rndis_indicate*, i32)** %27, align 8
  %29 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %30 = load %struct.rndis_indicate*, %struct.rndis_indicate** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 %28(%struct.usbnet* %29, %struct.rndis_indicate* %30, i32 %31)
  br label %51

33:                                               ; preds = %3
  %34 = load %struct.rndis_indicate*, %struct.rndis_indicate** %5, align 8
  %35 = getelementptr inbounds %struct.rndis_indicate, %struct.rndis_indicate* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %43 [
    i32 129, label %37
    i32 128, label %40
  ]

37:                                               ; preds = %33
  %38 = load %struct.device*, %struct.device** %8, align 8
  %39 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %50

40:                                               ; preds = %33
  %41 = load %struct.device*, %struct.device** %8, align 8
  %42 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %50

43:                                               ; preds = %33
  %44 = load %struct.device*, %struct.device** %8, align 8
  %45 = load %struct.rndis_indicate*, %struct.rndis_indicate** %5, align 8
  %46 = getelementptr inbounds %struct.rndis_indicate, %struct.rndis_indicate* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32_to_cpu(i32 %47)
  %49 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %43, %40, %37
  br label %51

51:                                               ; preds = %50, %23
  ret void
}

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
