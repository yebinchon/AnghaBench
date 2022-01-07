; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_nmclan_cs.c_restore_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_nmclan_cs.c_restore_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"%s: restoring Rx mode to %d addresses.\0A\00", align 1
@IFF_PROMISC = common dso_local global i32 0, align 4
@MACE_UTR = common dso_local global i32 0, align 4
@MACE_UTR_LOOP_EXTERNAL = common dso_local global i32 0, align 4
@MACE_MACCC = common dso_local global i32 0, align 4
@MACE_MACCC_PROM = common dso_local global i32 0, align 4
@MACE_MACCC_ENXMT = common dso_local global i32 0, align 4
@MACE_MACCC_ENRCV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @restore_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.TYPE_4__* @netdev_priv(%struct.net_device* %8)
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @DEBUG(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IFF_PROMISC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @MACE_UTR, align 4
  %27 = load i32, i32* @MACE_UTR_LOOP_EXTERNAL, align 4
  %28 = call i32 @mace_write(%struct.TYPE_4__* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @MACE_MACCC, align 4
  %32 = load i32, i32* @MACE_MACCC_PROM, align 4
  %33 = load i32, i32* @MACE_MACCC_ENXMT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @MACE_MACCC_ENRCV, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @mace_write(%struct.TYPE_4__* %29, i32 %30, i32 %31, i32 %36)
  br label %51

38:                                               ; preds = %1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @MACE_UTR, align 4
  %42 = load i32, i32* @MACE_UTR_LOOP_EXTERNAL, align 4
  %43 = call i32 @mace_write(%struct.TYPE_4__* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @MACE_MACCC, align 4
  %47 = load i32, i32* @MACE_MACCC_ENXMT, align 4
  %48 = load i32, i32* @MACE_MACCC_ENRCV, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @mace_write(%struct.TYPE_4__* %44, i32 %45, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %38, %23
  ret void
}

declare dso_local %struct.TYPE_4__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @mace_write(%struct.TYPE_4__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
