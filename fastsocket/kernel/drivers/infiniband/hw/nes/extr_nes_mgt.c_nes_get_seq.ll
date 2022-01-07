; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_mgt.c_nes_get_seq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_mgt.c_nes_get_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32* }
%struct.nes_rskb_cb = type { i64 }
%struct.iphdr = type { i32 }
%struct.tcphdr = type { i32, i32, i32, i32, i32 }

@ETH_HLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32*, i32*, i32*, i32*)* @nes_get_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_get_seq(%struct.sk_buff* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.nes_rskb_cb*, align 8
  %12 = alloca %struct.iphdr*, align 8
  %13 = alloca %struct.tcphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = bitcast i32* %17 to %struct.nes_rskb_cb*
  store %struct.nes_rskb_cb* %18, %struct.nes_rskb_cb** %11, align 8
  %19 = load %struct.nes_rskb_cb*, %struct.nes_rskb_cb** %11, align 8
  %20 = getelementptr inbounds %struct.nes_rskb_cb, %struct.nes_rskb_cb* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ETH_HLEN, align 8
  %23 = add nsw i64 %21, %22
  %24 = inttoptr i64 %23 to %struct.iphdr*
  store %struct.iphdr* %24, %struct.iphdr** %12, align 8
  %25 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %26 = bitcast %struct.iphdr* %25 to i8*
  %27 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %28 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 4, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %26, i64 %31
  %33 = bitcast i8* %32 to %struct.tcphdr*
  store %struct.tcphdr* %33, %struct.tcphdr** %13, align 8
  %34 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %35 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @be32_to_cpu(i32 %36)
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %40 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be16_to_cpu(i32 %41)
  %43 = load i32*, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %45 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %49 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %10, align 8
  store i32 %50, i32* %51, align 4
  %52 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %53 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @be32_to_cpu(i32 %54)
  ret i32 %55
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
