; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_cs.c_prism2_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_cs.c_prism2_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.hostap_cs_priv = type { i32 }
%struct.hostap_interface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hostap_cs_priv* }

@DEBUG_FLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"prism2_detach\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @prism2_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prism2_detach(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.hostap_cs_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.hostap_interface*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %6 = load i32, i32* @DEBUG_FLOW, align 4
  %7 = call i32 @PDEBUG(i32 %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %9 = ptrtoint %struct.pcmcia_device* %8 to i32
  %10 = call i32 @prism2_release(i32 %9)
  %11 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %12 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  %14 = icmp ne %struct.net_device* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %17 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %4, align 8
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %19)
  store %struct.hostap_interface* %20, %struct.hostap_interface** %5, align 8
  %21 = load %struct.hostap_interface*, %struct.hostap_interface** %5, align 8
  %22 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.hostap_cs_priv*, %struct.hostap_cs_priv** %24, align 8
  store %struct.hostap_cs_priv* %25, %struct.hostap_cs_priv** %3, align 8
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @prism2_free_local_data(%struct.net_device* %26)
  %28 = load %struct.hostap_cs_priv*, %struct.hostap_cs_priv** %3, align 8
  %29 = call i32 @kfree(%struct.hostap_cs_priv* %28)
  br label %30

30:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @prism2_release(i32) #1

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @prism2_free_local_data(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.hostap_cs_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
