; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-dvb.c_fdtv_dvb_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-dvb.c_fdtv_dvb_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdtv_dvb_unregister(%struct.firedtv* %0) #0 {
  %2 = alloca %struct.firedtv*, align 8
  store %struct.firedtv* %0, %struct.firedtv** %2, align 8
  %3 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %4 = call i32 @fdtv_ca_release(%struct.firedtv* %3)
  %5 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %6 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %5, i32 0, i32 5
  %7 = call i32 @dvb_unregister_frontend(i32* %6)
  %8 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %9 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %8, i32 0, i32 4
  %10 = call i32 @dvb_net_release(i32* %9)
  %11 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %12 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %14, align 8
  %16 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %17 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i32 %15(%struct.TYPE_4__* %18)
  %20 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %21 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %23, align 8
  %25 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %26 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %29 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %28, i32 0, i32 3
  %30 = call i32 %24(%struct.TYPE_4__* %27, i32* %29)
  %31 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %32 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %31, i32 0, i32 2
  %33 = call i32 @dvb_dmxdev_release(i32* %32)
  %34 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %35 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %34, i32 0, i32 1
  %36 = call i32 @dvb_dmx_release(%struct.TYPE_5__* %35)
  %37 = load %struct.firedtv*, %struct.firedtv** %2, align 8
  %38 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %37, i32 0, i32 0
  %39 = call i32 @dvb_unregister_adapter(i32* %38)
  ret void
}

declare dso_local i32 @fdtv_ca_release(%struct.firedtv*) #1

declare dso_local i32 @dvb_unregister_frontend(i32*) #1

declare dso_local i32 @dvb_net_release(i32*) #1

declare dso_local i32 @dvb_dmxdev_release(i32*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_5__*) #1

declare dso_local i32 @dvb_unregister_adapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
