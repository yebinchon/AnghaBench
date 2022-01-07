; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_update_speed_duplex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_update_speed_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slave = type { i32, i64, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, %struct.ethtool_cmd*)* }
%struct.ethtool_cmd = type { i32, i32 }

@ETHTOOL_GSET = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i64 0, align 8
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slave*)* @bond_update_speed_duplex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_update_speed_duplex(%struct.slave* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slave*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.slave* %0, %struct.slave** %3, align 8
  %8 = load %struct.slave*, %struct.slave** %3, align 8
  %9 = getelementptr inbounds %struct.slave, %struct.slave* %8, i32 0, i32 2
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %5, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %5, i32 0, i32 1
  %13 = load i32, i32* @ETHTOOL_GSET, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i64, i64* @SPEED_UNKNOWN, align 8
  %15 = load %struct.slave*, %struct.slave** %3, align 8
  %16 = getelementptr inbounds %struct.slave, %struct.slave* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %18 = load %struct.slave*, %struct.slave** %3, align 8
  %19 = getelementptr inbounds %struct.slave, %struct.slave* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.net_device*, %struct.ethtool_cmd*)*, i32 (%struct.net_device*, %struct.ethtool_cmd*)** %28, align 8
  %30 = icmp ne i32 (%struct.net_device*, %struct.ethtool_cmd*)* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24, %1
  store i32 -1, i32* %2, align 4
  br label %64

32:                                               ; preds = %24
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.net_device*, %struct.ethtool_cmd*)*, i32 (%struct.net_device*, %struct.ethtool_cmd*)** %36, align 8
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = call i32 %37(%struct.net_device* %38, %struct.ethtool_cmd* %5)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i32 -1, i32* %2, align 4
  br label %64

43:                                               ; preds = %32
  %44 = call i64 @ethtool_cmd_speed(%struct.ethtool_cmd* %5)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %6, align 8
  %49 = icmp eq i64 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %43
  store i32 -1, i32* %2, align 4
  br label %64

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %5, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %55 [
    i32 129, label %54
    i32 128, label %54
  ]

54:                                               ; preds = %51, %51
  br label %56

55:                                               ; preds = %51
  store i32 -1, i32* %2, align 4
  br label %64

56:                                               ; preds = %54
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.slave*, %struct.slave** %3, align 8
  %59 = getelementptr inbounds %struct.slave, %struct.slave* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %5, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.slave*, %struct.slave** %3, align 8
  %63 = getelementptr inbounds %struct.slave, %struct.slave* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %56, %55, %50, %42, %31
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @ethtool_cmd_speed(%struct.ethtool_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
