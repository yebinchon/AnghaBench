; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_verify_udp_checksum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_verify_udp_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.sk_buff = type { i64, i32 }
%struct.udphdr = type { i32, i32 }
%struct.inet_sock = type { i32, i32 }

@IPPROTO_UDP = common dso_local global i32 0, align 4
@CHECKSUM_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @pppol2tp_verify_udp_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppol2tp_verify_udp_checksum(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.udphdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inet_sock*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %10)
  store %struct.udphdr* %11, %struct.udphdr** %6, align 8
  %12 = load %struct.udphdr*, %struct.udphdr** %6, align 8
  %13 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ntohs(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i64 @skb_csum_unnecessary(%struct.sk_buff* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load %struct.udphdr*, %struct.udphdr** %6, align 8
  %26 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %20, %2
  store i32 0, i32* %3, align 4
  br label %62

30:                                               ; preds = %24
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = call %struct.inet_sock* @inet_sk(%struct.sock* %31)
  store %struct.inet_sock* %32, %struct.inet_sock** %8, align 8
  %33 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %34 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %37 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @IPPROTO_UDP, align 4
  %41 = call i32 @csum_tcpudp_nofold(i32 %35, i32 %38, i32 %39, i32 %40, i32 0)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CHECKSUM_COMPLETE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %30
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @csum_add(i32 %48, i32 %51)
  %53 = call i32 @csum_fold(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %62

56:                                               ; preds = %47, %30
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = call i32 @__skb_checksum_complete(%struct.sk_buff* %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %56, %55, %29
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @skb_csum_unnecessary(%struct.sk_buff*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @csum_tcpudp_nofold(i32, i32, i32, i32, i32) #1

declare dso_local i32 @csum_fold(i32) #1

declare dso_local i32 @csum_add(i32, i32) #1

declare dso_local i32 @__skb_checksum_complete(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
