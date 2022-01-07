; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_nic_rx_with_start_and_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_nic_rx_with_start_and_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipg_nic_private = type { i32, %struct.sk_buff**, %struct.ipg_jumbo }
%struct.sk_buff = type { i32, i32 }
%struct.ipg_jumbo = type { i32*, i64, i64 }
%struct.ipg_rx = type { i32 }

@NORMAL_PACKET = common dso_local global i64 0, align 8
@IPG_RFS_RXFRAMELEN = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ipg_nic_private*, %struct.ipg_rx*, i32)* @ipg_nic_rx_with_start_and_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipg_nic_rx_with_start_and_end(%struct.net_device* %0, %struct.ipg_nic_private* %1, %struct.ipg_rx* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ipg_nic_private*, align 8
  %7 = alloca %struct.ipg_rx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipg_jumbo*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ipg_nic_private* %1, %struct.ipg_nic_private** %6, align 8
  store %struct.ipg_rx* %2, %struct.ipg_rx** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %13 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %12, i32 0, i32 2
  store %struct.ipg_jumbo* %13, %struct.ipg_jumbo** %9, align 8
  %14 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %15 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %4
  %19 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %20 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @dev_kfree_skb_irq(i32* %21)
  %23 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %24 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %26 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %28 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %18, %4
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = call i64 @ipg_nic_rx_check_error(%struct.net_device* %30)
  %32 = load i64, i64* @NORMAL_PACKET, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %82

35:                                               ; preds = %29
  %36 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %37 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %36, i32 0, i32 1
  %38 = load %struct.sk_buff**, %struct.sk_buff*** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %38, i64 %40
  %42 = load %struct.sk_buff*, %struct.sk_buff** %41, align 8
  store %struct.sk_buff* %42, %struct.sk_buff** %10, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %82

46:                                               ; preds = %35
  %47 = load %struct.ipg_rx*, %struct.ipg_rx** %7, align 8
  %48 = getelementptr inbounds %struct.ipg_rx, %struct.ipg_rx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le64_to_cpu(i32 %49)
  %51 = load i32, i32* @IPG_RFS_RXFRAMELEN, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %55 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %60 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %58, %46
  %63 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @skb_put(%struct.sk_buff* %63, i32 %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = call i32 @eth_type_trans(%struct.sk_buff* %66, %struct.net_device* %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @CHECKSUM_NONE, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = call i32 @netif_rx(%struct.sk_buff* %74)
  %76 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %77 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %76, i32 0, i32 1
  %78 = load %struct.sk_buff**, %struct.sk_buff*** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %78, i64 %80
  store %struct.sk_buff* null, %struct.sk_buff** %81, align 8
  br label %82

82:                                               ; preds = %62, %45, %34
  ret void
}

declare dso_local i32 @dev_kfree_skb_irq(i32*) #1

declare dso_local i64 @ipg_nic_rx_check_error(%struct.net_device*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
