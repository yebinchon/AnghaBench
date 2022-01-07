; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_check_copybreak.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_check_copybreak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.e1000_buffer = type { %struct.sk_buff* }
%struct.sk_buff = type { i64 }

@copybreak = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.e1000_buffer*, i64, %struct.sk_buff**)* @e1000_check_copybreak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_check_copybreak(%struct.net_device* %0, %struct.e1000_buffer* %1, i64 %2, %struct.sk_buff** %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.e1000_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff**, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.e1000_buffer* %1, %struct.e1000_buffer** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.sk_buff** %3, %struct.sk_buff*** %8, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @copybreak, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %43

14:                                               ; preds = %4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %15, i64 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %9, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %43

21:                                               ; preds = %14
  %22 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %23 = load i32, i32* @NET_IP_ALIGN, align 4
  %24 = sub nsw i32 0, %23
  %25 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @NET_IP_ALIGN, align 4
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %28, %30
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* @NET_IP_ALIGN, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %22, i32 %24, i64 %31, i64 %35)
  %37 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %37, align 8
  %39 = load %struct.e1000_buffer*, %struct.e1000_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %39, i32 0, i32 0
  store %struct.sk_buff* %38, %struct.sk_buff** %40, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %42 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  store %struct.sk_buff* %41, %struct.sk_buff** %42, align 8
  br label %43

43:                                               ; preds = %21, %20, %13
  ret void
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i64) #1

declare dso_local i32 @skb_copy_to_linear_data_offset(%struct.sk_buff*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
