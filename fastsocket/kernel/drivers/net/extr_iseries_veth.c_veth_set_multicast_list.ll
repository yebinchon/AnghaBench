; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32*, %struct.dev_mc_list* }
%struct.veth_port = type { i32, i64, i32, i32* }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@VETH_MAX_MCAST = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @veth_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @veth_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.veth_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dev_mc_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.veth_port* @netdev_priv(%struct.net_device* %9)
  store %struct.veth_port* %10, %struct.veth_port** %3, align 8
  %11 = load %struct.veth_port*, %struct.veth_port** %3, align 8
  %12 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %11, i32 0, i32 2
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @write_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IFF_PROMISC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %1
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IFF_ALLMULTI, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %21
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VETH_MAX_MCAST, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %21, %1
  %35 = load %struct.veth_port*, %struct.veth_port** %3, align 8
  %36 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %85

37:                                               ; preds = %28
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 2
  %40 = load %struct.dev_mc_list*, %struct.dev_mc_list** %39, align 8
  store %struct.dev_mc_list* %40, %struct.dev_mc_list** %5, align 8
  %41 = load %struct.veth_port*, %struct.veth_port** %3, align 8
  %42 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.veth_port*, %struct.veth_port** %3, align 8
  %44 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %81, %37
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %84

52:                                               ; preds = %45
  %53 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %54 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %52
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* @ETH_ALEN, align 4
  %64 = call i32 @memcpy(i32* %8, i32* %62, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.veth_port*, %struct.veth_port** %3, align 8
  %67 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.veth_port*, %struct.veth_port** %3, align 8
  %70 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %65, i32* %72, align 4
  %73 = load %struct.veth_port*, %struct.veth_port** %3, align 8
  %74 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %61, %52
  %78 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %79 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %78, i32 0, i32 1
  %80 = load %struct.dev_mc_list*, %struct.dev_mc_list** %79, align 8
  store %struct.dev_mc_list* %80, %struct.dev_mc_list** %5, align 8
  br label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %45

84:                                               ; preds = %45
  br label %85

85:                                               ; preds = %84, %34
  %86 = load %struct.veth_port*, %struct.veth_port** %3, align 8
  %87 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %86, i32 0, i32 2
  %88 = load i64, i64* %4, align 8
  %89 = call i32 @write_unlock_irqrestore(i32* %87, i64 %88)
  ret void
}

declare dso_local %struct.veth_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
