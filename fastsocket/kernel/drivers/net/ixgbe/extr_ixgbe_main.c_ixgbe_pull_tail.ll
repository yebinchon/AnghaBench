; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_pull_tail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_pull_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.skb_frag_struct = type { i32 }
%struct.TYPE_2__ = type { %struct.skb_frag_struct* }

@IXGBE_RX_HDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_ring*, %struct.sk_buff*)* @ixgbe_pull_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_pull_tail(%struct.ixgbe_ring* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ixgbe_ring*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.skb_frag_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %10, align 8
  %12 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %11, i64 0
  store %struct.skb_frag_struct* %12, %struct.skb_frag_struct** %5, align 8
  %13 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %5, align 8
  %14 = call i8* @skb_frag_address(%struct.skb_frag_struct* %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @IXGBE_RX_HDR_SIZE, align 4
  %17 = call i32 @ixgbe_get_headlen(i8* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ALIGN(i32 %20, i32 8)
  %22 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %18, i8* %19, i32 %21)
  %23 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @skb_frag_size_sub(%struct.skb_frag_struct* %23, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %5, align 8
  %28 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %39, %36
  store i32 %40, i32* %38, align 4
  ret void
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i8* @skb_frag_address(%struct.skb_frag_struct*) #1

declare dso_local i32 @ixgbe_get_headlen(i8*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @skb_frag_size_sub(%struct.skb_frag_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
