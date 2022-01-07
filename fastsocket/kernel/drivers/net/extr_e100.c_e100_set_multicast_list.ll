; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nic = type { i32, i32 }

@hw = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"mc_count=%d, flags=0x%04X\0A\00", align 1
@IFF_PROMISC = common dso_local global i32 0, align 4
@promiscuous = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@E100_MAX_MULTICAST_ADDRS = common dso_local global i64 0, align 8
@multicast_all = common dso_local global i32 0, align 4
@e100_configure = common dso_local global i32 0, align 4
@e100_multi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @e100_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e100_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.nic*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.nic* @netdev_priv(%struct.net_device* %4)
  store %struct.nic* %5, %struct.nic** %3, align 8
  %6 = load %struct.nic*, %struct.nic** %3, align 8
  %7 = load i32, i32* @hw, align 4
  %8 = load i32, i32* @KERN_DEBUG, align 4
  %9 = load %struct.nic*, %struct.nic** %3, align 8
  %10 = getelementptr inbounds %struct.nic, %struct.nic* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i64 @netdev_mc_count(%struct.net_device* %12)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @netif_printk(%struct.nic* %6, i32 %7, i32 %8, i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %13, i32 %16)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IFF_PROMISC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load i32, i32* @promiscuous, align 4
  %26 = load %struct.nic*, %struct.nic** %3, align 8
  %27 = getelementptr inbounds %struct.nic, %struct.nic* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %37

30:                                               ; preds = %1
  %31 = load i32, i32* @promiscuous, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.nic*, %struct.nic** %3, align 8
  %34 = getelementptr inbounds %struct.nic, %struct.nic* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %30, %24
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFF_ALLMULTI, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = call i64 @netdev_mc_count(%struct.net_device* %45)
  %47 = load i64, i64* @E100_MAX_MULTICAST_ADDRS, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %44, %37
  %50 = load i32, i32* @multicast_all, align 4
  %51 = load %struct.nic*, %struct.nic** %3, align 8
  %52 = getelementptr inbounds %struct.nic, %struct.nic* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %62

55:                                               ; preds = %44
  %56 = load i32, i32* @multicast_all, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.nic*, %struct.nic** %3, align 8
  %59 = getelementptr inbounds %struct.nic, %struct.nic* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %55, %49
  %63 = load %struct.nic*, %struct.nic** %3, align 8
  %64 = load i32, i32* @e100_configure, align 4
  %65 = call i32 @e100_exec_cb(%struct.nic* %63, i32* null, i32 %64)
  %66 = load %struct.nic*, %struct.nic** %3, align 8
  %67 = load i32, i32* @e100_multi, align 4
  %68 = call i32 @e100_exec_cb(%struct.nic* %66, i32* null, i32 %67)
  ret void
}

declare dso_local %struct.nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_printk(%struct.nic*, i32, i32, i32, i8*, i64, i32) #1

declare dso_local i64 @netdev_mc_count(%struct.net_device*) #1

declare dso_local i32 @e100_exec_cb(%struct.nic*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
