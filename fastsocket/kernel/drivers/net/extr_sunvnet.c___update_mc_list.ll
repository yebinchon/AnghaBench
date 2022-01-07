; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunvnet.c___update_mc_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunvnet.c___update_mc_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnet = type { %struct.vnet_mcast_entry* }
%struct.vnet_mcast_entry = type { i32, %struct.vnet_mcast_entry*, i32 }
%struct.net_device = type { %struct.dev_addr_list* }
%struct.dev_addr_list = type { i32, %struct.dev_addr_list* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnet*, %struct.net_device*)* @__update_mc_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__update_mc_list(%struct.vnet* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.vnet*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.dev_addr_list*, align 8
  %6 = alloca %struct.vnet_mcast_entry*, align 8
  store %struct.vnet* %0, %struct.vnet** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load %struct.dev_addr_list*, %struct.dev_addr_list** %8, align 8
  store %struct.dev_addr_list* %9, %struct.dev_addr_list** %5, align 8
  br label %10

10:                                               ; preds = %53, %2
  %11 = load %struct.dev_addr_list*, %struct.dev_addr_list** %5, align 8
  %12 = icmp ne %struct.dev_addr_list* %11, null
  br i1 %12, label %13, label %57

13:                                               ; preds = %10
  %14 = load %struct.vnet*, %struct.vnet** %3, align 8
  %15 = load %struct.dev_addr_list*, %struct.dev_addr_list** %5, align 8
  %16 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.vnet_mcast_entry* @__vnet_mc_find(%struct.vnet* %14, i32 %17)
  store %struct.vnet_mcast_entry* %18, %struct.vnet_mcast_entry** %6, align 8
  %19 = load %struct.vnet_mcast_entry*, %struct.vnet_mcast_entry** %6, align 8
  %20 = icmp ne %struct.vnet_mcast_entry* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load %struct.vnet_mcast_entry*, %struct.vnet_mcast_entry** %6, align 8
  %23 = getelementptr inbounds %struct.vnet_mcast_entry, %struct.vnet_mcast_entry* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %53

24:                                               ; preds = %13
  %25 = load %struct.vnet_mcast_entry*, %struct.vnet_mcast_entry** %6, align 8
  %26 = icmp ne %struct.vnet_mcast_entry* %25, null
  br i1 %26, label %52, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call %struct.vnet_mcast_entry* @kzalloc(i32 24, i32 %28)
  store %struct.vnet_mcast_entry* %29, %struct.vnet_mcast_entry** %6, align 8
  %30 = load %struct.vnet_mcast_entry*, %struct.vnet_mcast_entry** %6, align 8
  %31 = icmp ne %struct.vnet_mcast_entry* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %53

33:                                               ; preds = %27
  %34 = load %struct.vnet_mcast_entry*, %struct.vnet_mcast_entry** %6, align 8
  %35 = getelementptr inbounds %struct.vnet_mcast_entry, %struct.vnet_mcast_entry* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dev_addr_list*, %struct.dev_addr_list** %5, align 8
  %38 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = call i32 @memcpy(i32 %36, i32 %39, i32 %40)
  %42 = load %struct.vnet_mcast_entry*, %struct.vnet_mcast_entry** %6, align 8
  %43 = getelementptr inbounds %struct.vnet_mcast_entry, %struct.vnet_mcast_entry* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.vnet*, %struct.vnet** %3, align 8
  %45 = getelementptr inbounds %struct.vnet, %struct.vnet* %44, i32 0, i32 0
  %46 = load %struct.vnet_mcast_entry*, %struct.vnet_mcast_entry** %45, align 8
  %47 = load %struct.vnet_mcast_entry*, %struct.vnet_mcast_entry** %6, align 8
  %48 = getelementptr inbounds %struct.vnet_mcast_entry, %struct.vnet_mcast_entry* %47, i32 0, i32 1
  store %struct.vnet_mcast_entry* %46, %struct.vnet_mcast_entry** %48, align 8
  %49 = load %struct.vnet_mcast_entry*, %struct.vnet_mcast_entry** %6, align 8
  %50 = load %struct.vnet*, %struct.vnet** %3, align 8
  %51 = getelementptr inbounds %struct.vnet, %struct.vnet* %50, i32 0, i32 0
  store %struct.vnet_mcast_entry* %49, %struct.vnet_mcast_entry** %51, align 8
  br label %52

52:                                               ; preds = %33, %24
  br label %53

53:                                               ; preds = %52, %32, %21
  %54 = load %struct.dev_addr_list*, %struct.dev_addr_list** %5, align 8
  %55 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %54, i32 0, i32 1
  %56 = load %struct.dev_addr_list*, %struct.dev_addr_list** %55, align 8
  store %struct.dev_addr_list* %56, %struct.dev_addr_list** %5, align 8
  br label %10

57:                                               ; preds = %10
  ret void
}

declare dso_local %struct.vnet_mcast_entry* @__vnet_mc_find(%struct.vnet*, i32) #1

declare dso_local %struct.vnet_mcast_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
