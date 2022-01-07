; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be.h_is_udp_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be.h_is_udp_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64 }

@IPPROTO_UDP = common dso_local global i64 0, align 8
@NEXTHDR_UDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @is_udp_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_udp_pkt(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = call %struct.TYPE_4__* @ip_hdr(%struct.sk_buff* %4)
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = call %struct.TYPE_4__* @ip_hdr(%struct.sk_buff* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IPPROTO_UDP, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %3, align 4
  br label %32

17:                                               ; preds = %1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %19 = call %struct.TYPE_4__* @ip_hdr(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 6
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %25 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NEXTHDR_UDP, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %23, %17
  br label %32

32:                                               ; preds = %31, %9
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.TYPE_4__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
