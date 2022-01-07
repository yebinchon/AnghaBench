; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_insert_vlan_in_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_insert_vlan_in_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i64, i64 }
%struct.sk_buff = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.be_adapter*, %struct.sk_buff*, i32*)* @be_insert_vlan_in_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @be_insert_vlan_in_pkt(%struct.be_adapter* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %9, i32 %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %19, %struct.sk_buff** %4, align 8
  br label %96

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i64 @vlan_tx_tag_present(%struct.sk_buff* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i64 @be_get_tx_vlan_tag(%struct.be_adapter* %25, %struct.sk_buff* %26)
  store i64 %27, i64* %8, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %30 = call i64 @qnq_async_evt_rcvd(%struct.be_adapter* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %34 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %42 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32*, i32** %7, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32*, i32** %7, align 8
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %47, %44
  br label %50

50:                                               ; preds = %49, %32, %28
  %51 = load i64, i64* %8, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call %struct.sk_buff* @__vlan_put_tag(%struct.sk_buff* %54, i64 %55)
  store %struct.sk_buff* %56, %struct.sk_buff** %6, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = icmp ne %struct.sk_buff* %57, null
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %64, %struct.sk_buff** %4, align 8
  br label %96

65:                                               ; preds = %53
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %65, %50
  %69 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %70 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %68
  %74 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %75 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %8, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call %struct.sk_buff* @__vlan_put_tag(%struct.sk_buff* %77, i64 %78)
  store %struct.sk_buff* %79, %struct.sk_buff** %6, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = icmp ne %struct.sk_buff* %80, null
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %73
  %87 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %87, %struct.sk_buff** %4, align 8
  br label %96

88:                                               ; preds = %73
  %89 = load i32*, i32** %7, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32*, i32** %7, align 8
  store i32 1, i32* %92, align 4
  br label %93

93:                                               ; preds = %91, %88
  br label %94

94:                                               ; preds = %93, %68
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %95, %struct.sk_buff** %4, align 8
  br label %96

96:                                               ; preds = %94, %86, %63, %18
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %97
}

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @vlan_tx_tag_present(%struct.sk_buff*) #1

declare dso_local i64 @be_get_tx_vlan_tag(%struct.be_adapter*, %struct.sk_buff*) #1

declare dso_local i64 @qnq_async_evt_rcvd(%struct.be_adapter*) #1

declare dso_local %struct.sk_buff* @__vlan_put_tag(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
