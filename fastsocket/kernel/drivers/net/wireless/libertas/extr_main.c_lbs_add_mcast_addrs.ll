; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_add_mcast_addrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_add_mcast_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_ds_mac_multicast_adr = type { i32* }
%struct.net_device = type { i32, i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32, %struct.dev_mc_list* }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"mcast address %s:%pM skipped\0A\00", align 1
@MRVDRV_MAX_MULTICAST_LIST_SIZE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"mcast address %s:%pM added to filter\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd_ds_mac_multicast_adr*, %struct.net_device*, i32)* @lbs_add_mcast_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_add_mcast_addrs(%struct.cmd_ds_mac_multicast_adr* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmd_ds_mac_multicast_adr*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dev_mc_list*, align 8
  store %struct.cmd_ds_mac_multicast_adr* %0, %struct.cmd_ds_mac_multicast_adr** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IFF_UP, align 4
  %15 = load i32, i32* @IFF_MULTICAST, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = load i32, i32* @IFF_UP, align 4
  %19 = load i32, i32* @IFF_MULTICAST, align 4
  %20 = or i32 %18, %19
  %21 = icmp ne i32 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %4, align 4
  br label %92

24:                                               ; preds = %3
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = call i32 @netif_addr_lock_bh(%struct.net_device* %25)
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 2
  %29 = load %struct.dev_mc_list*, %struct.dev_mc_list** %28, align 8
  store %struct.dev_mc_list* %29, %struct.dev_mc_list** %9, align 8
  br label %30

30:                                               ; preds = %78, %24
  %31 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %32 = icmp ne %struct.dev_mc_list* %31, null
  br i1 %32, label %33, label %82

33:                                               ; preds = %30
  %34 = load %struct.cmd_ds_mac_multicast_adr*, %struct.cmd_ds_mac_multicast_adr** %5, align 8
  %35 = getelementptr inbounds %struct.cmd_ds_mac_multicast_adr, %struct.cmd_ds_mac_multicast_adr* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %39 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @mac_in_list(i32* %36, i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %33
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %48 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @lbs_deb_net(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49)
  br label %78

51:                                               ; preds = %33
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @MRVDRV_MAX_MULTICAST_LIST_SIZE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %82

56:                                               ; preds = %51
  %57 = load %struct.cmd_ds_mac_multicast_adr*, %struct.cmd_ds_mac_multicast_adr** %5, align 8
  %58 = getelementptr inbounds %struct.cmd_ds_mac_multicast_adr, %struct.cmd_ds_mac_multicast_adr* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = mul nsw i32 6, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %65 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ETH_ALEN, align 4
  %68 = call i32 @memcpy(i32* %63, i32 %66, i32 %67)
  %69 = load %struct.net_device*, %struct.net_device** %6, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %73 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @lbs_deb_net(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %74)
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %56, %43
  %79 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %80 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %79, i32 0, i32 1
  %81 = load %struct.dev_mc_list*, %struct.dev_mc_list** %80, align 8
  store %struct.dev_mc_list* %81, %struct.dev_mc_list** %9, align 8
  br label %30

82:                                               ; preds = %55, %30
  %83 = load %struct.net_device*, %struct.net_device** %6, align 8
  %84 = call i32 @netif_addr_unlock_bh(%struct.net_device* %83)
  %85 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %86 = icmp ne %struct.dev_mc_list* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* @EOVERFLOW, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %92

90:                                               ; preds = %82
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %87, %22
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @netif_addr_lock_bh(%struct.net_device*) #1

declare dso_local i64 @mac_in_list(i32*, i32, i32) #1

declare dso_local i32 @lbs_deb_net(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @netif_addr_unlock_bh(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
