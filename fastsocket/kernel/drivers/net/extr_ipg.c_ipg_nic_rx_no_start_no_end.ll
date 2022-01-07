; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_nic_rx_no_start_no_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_nic_rx_no_start_no_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipg_nic_private = type { i64, i32, %struct.sk_buff**, %struct.ipg_jumbo }
%struct.sk_buff = type { i32 }
%struct.ipg_jumbo = type { i64, i32*, i64 }
%struct.ipg_rx = type { i32 }

@NORMAL_PACKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ipg_nic_private*, %struct.ipg_rx*, i32)* @ipg_nic_rx_no_start_no_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipg_nic_rx_no_start_no_end(%struct.net_device* %0, %struct.ipg_nic_private* %1, %struct.ipg_rx* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ipg_nic_private*, align 8
  %7 = alloca %struct.ipg_rx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipg_jumbo*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ipg_nic_private* %1, %struct.ipg_nic_private** %6, align 8
  store %struct.ipg_rx* %2, %struct.ipg_rx** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %12 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %11, i32 0, i32 3
  store %struct.ipg_jumbo* %12, %struct.ipg_jumbo** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call i64 @ipg_nic_rx_check_error(%struct.net_device* %13)
  %15 = load i64, i64* @NORMAL_PACKET, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %68

17:                                               ; preds = %4
  %18 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %19 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %18, i32 0, i32 2
  %20 = load %struct.sk_buff**, %struct.sk_buff*** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %20, i64 %22
  %24 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  store %struct.sk_buff* %24, %struct.sk_buff** %10, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %27, label %67

27:                                               ; preds = %17
  %28 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %29 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %64

32:                                               ; preds = %27
  %33 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %34 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %38 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, %36
  store i64 %40, i64* %38, align 8
  %41 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %42 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %45 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sle i64 %43, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %32
  %49 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %50 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %53 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @skb_put(i32* %51, i32 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %60 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @memcpy(i32 %55, i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %48, %32
  br label %64

64:                                               ; preds = %63, %27
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = call i32 @ipg_nic_rx_free_skb(%struct.net_device* %65)
  br label %67

67:                                               ; preds = %64, %17
  br label %79

68:                                               ; preds = %4
  %69 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %70 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @dev_kfree_skb_irq(i32* %71)
  %73 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %74 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %76 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load %struct.ipg_jumbo*, %struct.ipg_jumbo** %9, align 8
  %78 = getelementptr inbounds %struct.ipg_jumbo, %struct.ipg_jumbo* %77, i32 0, i32 1
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %68, %67
  ret void
}

declare dso_local i64 @ipg_nic_rx_check_error(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_put(i32*, i32) #1

declare dso_local i32 @ipg_nic_rx_free_skb(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
