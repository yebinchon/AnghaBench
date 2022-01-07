; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { %struct.pch_gbe_hw, %struct.net_device* }
%struct.pch_gbe_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@PCH_GBE_MODE_MII_ETHER = common dso_local global i64 0, align 8
@PCH_GBE_MODE_GMII_ETHER = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i32 0, align 4
@PCH_GBE_MODE_FULL_DUPLEX = common dso_local global i64 0, align 8
@PCH_GBE_MODE_HALF_DUPLEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_gbe_adapter*, i32, i32)* @pch_gbe_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_set_mode(%struct.pch_gbe_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pch_gbe_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.pch_gbe_hw*, align 8
  %9 = alloca i64, align 8
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %7, align 8
  %13 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %13, i32 0, i32 0
  store %struct.pch_gbe_hw* %14, %struct.pch_gbe_hw** %8, align 8
  store i64 0, i64* %9, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %26 [
    i32 130, label %16
    i32 129, label %20
    i32 128, label %24
  ]

16:                                               ; preds = %3
  %17 = load i64, i64* @PCH_GBE_MODE_MII_ETHER, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  store i32 10, i32* %19, align 4
  br label %26

20:                                               ; preds = %3
  %21 = load i64, i64* @PCH_GBE_MODE_MII_ETHER, align 8
  store i64 %21, i64* %9, align 8
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  store i32 100, i32* %23, align 4
  br label %26

24:                                               ; preds = %3
  %25 = load i64, i64* @PCH_GBE_MODE_GMII_ETHER, align 8
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %3, %24, %20, %16
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @DUPLEX_FULL, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i64, i64* @PCH_GBE_MODE_FULL_DUPLEX, align 8
  %32 = load i64, i64* %9, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %9, align 8
  br label %38

34:                                               ; preds = %26
  %35 = load i64, i64* @PCH_GBE_MODE_HALF_DUPLEX, align 8
  %36 = load i64, i64* %9, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %8, align 8
  %41 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @iowrite32(i64 %39, i32* %43)
  ret void
}

declare dso_local i32 @iowrite32(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
