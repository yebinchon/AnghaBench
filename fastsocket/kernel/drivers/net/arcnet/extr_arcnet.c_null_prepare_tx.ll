; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_arcnet.c_null_prepare_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_arcnet.c_null_prepare_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.archdr = type { i32 }
%struct.arcnet_local = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, i32, %struct.arc_hardware*, i32)* }
%struct.arc_hardware = type opaque
%struct.arc_hardware.0 = type { i32*, i32, i32 }

@D_PROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"tx: no encap for this host; load a protocol driver.\0A\00", align 1
@ARC_HDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.archdr*, i32, i32)* @null_prepare_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_prepare_tx(%struct.net_device* %0, %struct.archdr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.archdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.arcnet_local*, align 8
  %10 = alloca %struct.arc_hardware.0, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.archdr* %1, %struct.archdr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %11)
  store %struct.arcnet_local* %12, %struct.arcnet_local** %9, align 8
  %13 = load i32, i32* @D_PROTO, align 4
  %14 = call i32 @BUGMSG(i32 %13, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.arc_hardware.0, %struct.arc_hardware.0* %10, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.arc_hardware.0, %struct.arc_hardware.0* %10, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = getelementptr inbounds %struct.arc_hardware.0, %struct.arc_hardware.0* %10, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 255, i32* %24, align 4
  %25 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %26 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.net_device*, i32, i32, %struct.arc_hardware*, i32)*, i32 (%struct.net_device*, i32, i32, %struct.arc_hardware*, i32)** %27, align 8
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = bitcast %struct.arc_hardware.0* %10 to %struct.arc_hardware*
  %32 = load i32, i32* @ARC_HDR_SIZE, align 4
  %33 = call i32 %28(%struct.net_device* %29, i32 %30, i32 0, %struct.arc_hardware* %31, i32 %32)
  ret i32 1
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUGMSG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
