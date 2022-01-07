; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_nic_rx_with_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_nic_rx_with_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipg_nic_private = type { i32, %struct.sk_buff**, %struct.ipg_jumbo }
%struct.sk_buff = type { i32 }
%struct.ipg_jumbo = type { i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ipg_rx = type { i32 }

@NORMAL_PACKET = common dso_local global i64 0, align 8
@IPG_RFS_RXFRAMELEN = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ipg_nic_private*, %struct.ipg_rx*, i32)* @ipg_nic_rx_with_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipg_nic_rx_with_end(%struct.net_device* %0, %struct.ipg_nic_private* %1, %struct.ipg_rx* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ipg_nic_private*, align 8
  %7 = alloca %struct.ipg_rx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipg_jumbo*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ipg_nic_private* %1, %struct.ipg_nic_private** %6, align 8
  store %struct.ipg_rx* %2, %struct.ipg_rx** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %14 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %13, i32 0, i32 2
  store %struct.ipg_jumbo* %14, %struct.ipg_jumbo** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call i64 @ipg_nic_rx_check_error(%struct.net_device* %15)
  %17 = load i64, i64* @NORMAL_PACKET, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %96

19:                                               ; preds = %4
  %20 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %21 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %20, i32 0, i32 1
  %22 = load %struct.sk_buff**, %struct.sk_buff*** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %22, i64 %24
  %26 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  store %struct.sk_buff* %26, %struct.sk_buff** %10, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %19
  br label %107

30:                                               ; preds = %19
  %31 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %32 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %87

35:                                               ; preds = %30
  %36 = load %struct.ipg_rx*, %struct.ipg_rx** %7, align 8
  %37 = getelementptr inbounds %struct.ipg_rx, %struct.ipg_rx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le64_to_cpu(i32 %38)
  %40 = load i32, i32* @IPG_RFS_RXFRAMELEN, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %44 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %42, %45
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %49 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %35
  %53 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %54 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = call i32 @dev_kfree_skb_irq(%struct.TYPE_5__* %55)
  br label %86

57:                                               ; preds = %35
  %58 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %59 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @skb_put(%struct.TYPE_5__* %60, i32 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @memcpy(i32 %62, i32 %65, i32 %66)
  %68 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %69 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load %struct.net_device*, %struct.net_device** %5, align 8
  %72 = call i32 @eth_type_trans(%struct.TYPE_5__* %70, %struct.net_device* %71)
  %73 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %74 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* @CHECKSUM_NONE, align 4
  %78 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %79 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 4
  %82 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %83 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = call i32 @netif_rx(%struct.TYPE_5__* %84)
  br label %86

86:                                               ; preds = %57, %52
  br label %87

87:                                               ; preds = %86, %30
  %88 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %89 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %91 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  %92 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %93 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %92, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %93, align 8
  %94 = load %struct.net_device*, %struct.net_device** %5, align 8
  %95 = call i32 @ipg_nic_rx_free_skb(%struct.net_device* %94)
  br label %107

96:                                               ; preds = %4
  %97 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %98 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %97, i32 0, i32 1
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = call i32 @dev_kfree_skb_irq(%struct.TYPE_5__* %99)
  %101 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %102 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %101, i32 0, i32 2
  store i64 0, i64* %102, align 8
  %103 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %104 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  %105 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %106 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %105, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %106, align 8
  br label %107

107:                                              ; preds = %29, %96, %87
  ret void
}

declare dso_local i64 @ipg_nic_rx_check_error(%struct.net_device*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.TYPE_5__*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.TYPE_5__*) #1

declare dso_local i32 @ipg_nic_rx_free_skb(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
