; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_handle_offloads.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_handle_offloads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@SKB_GSO_UDP_TUNNEL = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@CHECKSUM_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @handle_offloads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_offloads(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = call i64 @skb_is_gso(%struct.sk_buff* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call i32 @skb_unclone(%struct.sk_buff* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %36

17:                                               ; preds = %8
  %18 = load i32, i32* @SKB_GSO_UDP_TUNNEL, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %18
  store i32 %23, i32* %21, align 4
  br label %35

24:                                               ; preds = %1
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i64, i64* @CHECKSUM_NONE, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %24
  br label %35

35:                                               ; preds = %34, %17
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %15
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @skb_unclone(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
