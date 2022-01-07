; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_nic_reset_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_nic_reset_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i64, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@__NX_RESETTING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NETXEN_ADAPTER_UP_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netxen_nic_reset_context(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %6, i32 0, i32 2
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %5, align 8
  %9 = load i32, i32* @__NX_RESETTING, align 4
  %10 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %10, i32 0, i32 1
  %12 = call i64 @test_and_set_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %63

17:                                               ; preds = %1
  %18 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NETXEN_ADAPTER_UP_MAGIC, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %17
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call i32 @netif_device_detach(%struct.net_device* %24)
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = call i64 @netif_running(%struct.net_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = call i32 @__netxen_nic_down(%struct.netxen_adapter* %30, %struct.net_device* %31)
  br label %33

33:                                               ; preds = %29, %23
  %34 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %35 = call i32 @netxen_nic_detach(%struct.netxen_adapter* %34)
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = call i64 @netif_running(%struct.net_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %41 = call i32 @netxen_nic_attach(%struct.netxen_adapter* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = call i32 @__netxen_nic_up(%struct.netxen_adapter* %45, %struct.net_device* %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %57

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %52, %33
  %54 = load %struct.net_device*, %struct.net_device** %5, align 8
  %55 = call i32 @netif_device_attach(%struct.net_device* %54)
  br label %56

56:                                               ; preds = %53, %17
  br label %57

57:                                               ; preds = %56, %51
  %58 = load i32, i32* @__NX_RESETTING, align 4
  %59 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %59, i32 0, i32 1
  %61 = call i32 @clear_bit(i32 %58, i32* %60)
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %57, %14
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @__netxen_nic_down(%struct.netxen_adapter*, %struct.net_device*) #1

declare dso_local i32 @netxen_nic_detach(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_nic_attach(%struct.netxen_adapter*) #1

declare dso_local i32 @__netxen_nic_up(%struct.netxen_adapter*, %struct.net_device*) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
