; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32, %struct.dev_mc_list* }
%struct.ehea_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Mcast registration limit reached (0x%llx). Use ALLMULTI!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ehea_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ehea_port*, align 8
  %4 = alloca %struct.dev_mc_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.ehea_port* @netdev_priv(%struct.net_device* %7)
  store %struct.ehea_port* %8, %struct.ehea_port** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IFF_PROMISC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @ehea_promiscuous(%struct.net_device* %9, i32 %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IFF_ALLMULTI, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = call i32 @ehea_allmulti(%struct.net_device* %27, i32 1)
  br label %85

29:                                               ; preds = %1
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = call i32 @ehea_allmulti(%struct.net_device* %30, i32 0)
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %84

36:                                               ; preds = %29
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = call i32 @ehea_drop_multicast_list(%struct.net_device* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = call i32 @ehea_allmulti(%struct.net_device* %42, i32 1)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %49 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %47, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %44
  %55 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %56 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ehea_info(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %85

61:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 2
  %64 = load %struct.dev_mc_list*, %struct.dev_mc_list** %63, align 8
  store %struct.dev_mc_list* %64, %struct.dev_mc_list** %4, align 8
  br label %65

65:                                               ; preds = %77, %61
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %65
  %72 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %73 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %74 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ehea_add_multicast_entry(%struct.ehea_port* %72, i32 %75)
  br label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  %80 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %81 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %80, i32 0, i32 1
  %82 = load %struct.dev_mc_list*, %struct.dev_mc_list** %81, align 8
  store %struct.dev_mc_list* %82, %struct.dev_mc_list** %4, align 8
  br label %65

83:                                               ; preds = %65
  br label %84

84:                                               ; preds = %83, %29
  br label %85

85:                                               ; preds = %84, %54, %26
  %86 = call i32 (...) @ehea_update_bcmc_registrations()
  ret void
}

declare dso_local %struct.ehea_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ehea_promiscuous(%struct.net_device*, i32) #1

declare dso_local i32 @ehea_allmulti(%struct.net_device*, i32) #1

declare dso_local i32 @ehea_drop_multicast_list(%struct.net_device*) #1

declare dso_local i32 @ehea_info(i8*, i32) #1

declare dso_local i32 @ehea_add_multicast_entry(%struct.ehea_port*, i32) #1

declare dso_local i32 @ehea_update_bcmc_registrations(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
