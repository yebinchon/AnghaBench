; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_digitv.c_digitv_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_digitv.c_digitv_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, %struct.digitv_state* }
%struct.digitv_state = type { i32 }

@mt352_attach = common dso_local global i32 0, align 4
@digitv_mt352_config = common dso_local global i32 0, align 4
@nxt6000_attach = common dso_local global i32 0, align 4
@digitv_nxt6000_config = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @digitv_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digitv_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.digitv_state*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %5 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.digitv_state*, %struct.digitv_state** %8, align 8
  store %struct.digitv_state* %9, %struct.digitv_state** %4, align 8
  %10 = load i32, i32* @mt352_attach, align 4
  %11 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i8* @dvb_attach(i32 %10, i32* @digitv_mt352_config, i32* %14)
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %17, i32 0, i32 1
  store i32* %16, i32** %18, align 8
  %19 = icmp ne i32* %16, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.digitv_state*, %struct.digitv_state** %4, align 8
  %22 = getelementptr inbounds %struct.digitv_state, %struct.digitv_state* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  store i32 0, i32* %2, align 4
  br label %40

23:                                               ; preds = %1
  %24 = load i32, i32* @nxt6000_attach, align 4
  %25 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i8* @dvb_attach(i32 %24, i32* @digitv_nxt6000_config, i32* %28)
  %30 = bitcast i8* %29 to i32*
  %31 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = icmp ne i32* %30, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load %struct.digitv_state*, %struct.digitv_state** %4, align 8
  %36 = getelementptr inbounds %struct.digitv_state, %struct.digitv_state* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  store i32 0, i32* %2, align 4
  br label %40

37:                                               ; preds = %23
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %34, %20
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i8* @dvb_attach(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
