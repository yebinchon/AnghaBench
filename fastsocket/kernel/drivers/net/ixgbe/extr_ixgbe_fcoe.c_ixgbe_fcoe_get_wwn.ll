; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_fcoe.c_ixgbe_fcoe_get_wwn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_fcoe.c_ixgbe_fcoe_get_wwn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ixgbe_mac_info }
%struct.ixgbe_mac_info = type { i32, i32, i64* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_fcoe_get_wwn(%struct.net_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbe_adapter*, align 8
  %10 = alloca %struct.ixgbe_mac_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  store i32 65535, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %13)
  store %struct.ixgbe_adapter* %14, %struct.ixgbe_adapter** %9, align 8
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.ixgbe_mac_info* %17, %struct.ixgbe_mac_info** %10, align 8
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %27 [
    i32 129, label %19
    i32 128, label %23
  ]

19:                                               ; preds = %3
  %20 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %21 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  br label %28

23:                                               ; preds = %3
  %24 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %25 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %23, %19
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 65535
  br i1 %30, label %31, label %88

31:                                               ; preds = %28
  %32 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %33 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = call i64 @is_valid_ether_addr(i64* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %88

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  %39 = shl i32 %38, 48
  %40 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %41 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %40, i32 0, i32 2
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = shl i32 %45, 40
  %47 = or i32 %39, %46
  %48 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %49 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = shl i32 %53, 32
  %55 = or i32 %47, %54
  %56 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %57 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 2
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = shl i32 %61, 24
  %63 = or i32 %55, %62
  %64 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %65 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %64, i32 0, i32 2
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 3
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = shl i32 %69, 16
  %71 = or i32 %63, %70
  %72 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %73 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %72, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 4
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = shl i32 %77, 8
  %79 = or i32 %71, %78
  %80 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %81 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 5
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = or i32 %79, %85
  %87 = load i32*, i32** %5, align 8
  store i32 %86, i32* %87, align 4
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %37, %31, %28
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @is_valid_ether_addr(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
