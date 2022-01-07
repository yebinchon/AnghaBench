; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_ipv6_exthdr_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_ipv6_exthdr_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ethhdr = type { i64 }
%struct.ipv6hdr = type { i64 }
%struct.ipv6_opt_hdr = type { i32 }

@ETH_HLEN = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@NEXTHDR_TCP = common dso_local global i64 0, align 8
@NEXTHDR_UDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @be_ipv6_exthdr_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_ipv6_exthdr_check(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ethhdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ipv6hdr*, align 8
  %7 = alloca %struct.ipv6_opt_hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ethhdr*
  store %struct.ethhdr* %11, %struct.ethhdr** %4, align 8
  %12 = load i64, i64* @ETH_HLEN, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %14 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @ETH_P_IPV6, align 4
  %17 = call i64 @htons(i32 %16)
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = add nsw i64 %22, %23
  %25 = inttoptr i64 %24 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %25, %struct.ipv6hdr** %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, 8
  store i64 %27, i64* %5, align 8
  %28 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %29 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NEXTHDR_TCP, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %19
  %34 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %35 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NEXTHDR_UDP, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = add nsw i64 %42, %43
  %45 = inttoptr i64 %44 to %struct.ipv6_opt_hdr*
  store %struct.ipv6_opt_hdr* %45, %struct.ipv6_opt_hdr** %7, align 8
  %46 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %7, align 8
  %47 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 255
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %54

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %33, %19
  br label %53

53:                                               ; preds = %52, %1
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
