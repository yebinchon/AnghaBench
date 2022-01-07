; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_umt-010.c_umt_mt352_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_umt-010.c_umt_mt352_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mt352_config = type { i32, i32 }

@umt_mt352_demod_init = common dso_local global i32 0, align 4
@mt352_attach = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @umt_mt352_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umt_mt352_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  %3 = alloca %struct.mt352_config, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %4 = call i32 @memset(%struct.mt352_config* %3, i32 0, i32 8)
  %5 = load i32, i32* @umt_mt352_demod_init, align 4
  %6 = getelementptr inbounds %struct.mt352_config, %struct.mt352_config* %3, i32 0, i32 1
  store i32 %5, i32* %6, align 4
  %7 = getelementptr inbounds %struct.mt352_config, %struct.mt352_config* %3, i32 0, i32 0
  store i32 15, i32* %7, align 4
  %8 = load i32, i32* @mt352_attach, align 4
  %9 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @dvb_attach(i32 %8, %struct.mt352_config* %3, i32* %12)
  %14 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  ret i32 0
}

declare dso_local i32 @memset(%struct.mt352_config*, i32, i32) #1

declare dso_local i32 @dvb_attach(i32, %struct.mt352_config*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
