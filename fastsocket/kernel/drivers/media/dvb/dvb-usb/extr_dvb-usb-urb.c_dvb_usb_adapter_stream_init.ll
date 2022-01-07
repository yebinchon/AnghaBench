; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-urb.c_dvb_usb_adapter_stream_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-urb.c_dvb_usb_adapter_stream_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_5__, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.dvb_usb_adapter*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@DVB_USB_ADAP_RECEIVES_204_BYTE_TS = common dso_local global i32 0, align 4
@dvb_usb_data_complete_204 = common dso_local global i32 0, align 4
@dvb_usb_data_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_usb_adapter_stream_init(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %3 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %3, i32 0, i32 2
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store i32 %7, i32* %10, align 4
  %11 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @DVB_USB_ADAP_RECEIVES_204_BYTE_TS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @dvb_usb_data_complete_204, align 4
  %20 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 8
  br label %28

23:                                               ; preds = %1
  %24 = load i32, i32* @dvb_usb_data_complete, align 4
  %25 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 8
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %30 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store %struct.dvb_usb_adapter* %29, %struct.dvb_usb_adapter** %32, align 8
  %33 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %33, i32 0, i32 1
  %35 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = call i32 @usb_urb_init(%struct.TYPE_6__* %34, i32* %37)
  ret i32 %38
}

declare dso_local i32 @usb_urb_init(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
