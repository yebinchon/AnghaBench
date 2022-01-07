; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_receive_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_receive_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sky2_port = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rx_ring_info = type { %struct.sk_buff* }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sky2_port*, %struct.rx_ring_info*, i32)* @receive_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @receive_new(%struct.sky2_port* %0, %struct.rx_ring_info* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sky2_port*, align 8
  %6 = alloca %struct.rx_ring_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.sky2_port* %0, %struct.sky2_port** %5, align 8
  store %struct.rx_ring_info* %1, %struct.rx_ring_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %12 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %10, align 4
  %14 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %15 = call %struct.sk_buff* @sky2_rx_alloc(%struct.sky2_port* %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %9, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %73

23:                                               ; preds = %3
  %24 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %25 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %24, i32 0, i32 0
  %26 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  store %struct.sk_buff* %26, %struct.sk_buff** %8, align 8
  %27 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %28 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %33 = call i32 @sky2_rx_unmap_skb(i32 %31, %struct.rx_ring_info* %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @prefetch(i32 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %39 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %40 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %39, i32 0, i32 0
  store %struct.sk_buff* %38, %struct.sk_buff** %40, align 8
  %41 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %42 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i64 @sky2_rx_map_skb(i32 %45, %struct.rx_ring_info* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %23
  %51 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %52 = call i32 @dev_kfree_skb(%struct.sk_buff* %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %55 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %54, i32 0, i32 0
  store %struct.sk_buff* %53, %struct.sk_buff** %55, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %73

56:                                               ; preds = %23
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %57)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @skb_put_frags(%struct.sk_buff* %63, i32 %64, i32 %65)
  br label %71

67:                                               ; preds = %56
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @skb_put(%struct.sk_buff* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %62
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %72, %struct.sk_buff** %4, align 8
  br label %73

73:                                               ; preds = %71, %50, %22
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %74
}

declare dso_local %struct.sk_buff* @sky2_rx_alloc(%struct.sky2_port*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sky2_rx_unmap_skb(i32, %struct.rx_ring_info*) #1

declare dso_local i32 @prefetch(i32) #1

declare dso_local i64 @sky2_rx_map_skb(i32, %struct.rx_ring_info*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_put_frags(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
